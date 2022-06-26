$f_name=$args[0]

$contentToAdd = @"
import './style.css'

const $f_name = () => {
  return (
    <div>
    </div>
  )
}

export default $f_name
"@

mkdir $f_name

New-Item -Path ./$f_name/index.js -ItemType File

Add-Content ./$f_name/index.js $contentToAdd

New-Item -Path ./$f_name/style.css -ItemType File