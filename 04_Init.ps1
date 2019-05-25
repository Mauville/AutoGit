Write-Host "You can get help with these commands in the README"
$name = Read-Host "Please input your github username"
$email = Read-Host "Please input your github email"
$repo = Read-Host "Please input the project ID. E.g. "Mauville/XXXXXXX""


$name = $name.Trim()
$email = $repo.Trim()
$repo = $repo.Trim()

$altrepo = $repo.Replace("/","-")

git config --global user.name "$name"
git config --global user.email "$email"


$DesktopPath = [Environment]::GetFolderPath("Desktop")

mkdir $DesktopPath\$altrepo
cd $DesktopPath\$altrepo

$url = "https://www.github.com/"+ $repo + ".git"
git clone $url

$folder = $repo.Substring($repo.IndexOf("/"),$repo.length)

cd $folder
