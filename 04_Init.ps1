$name = Read-Host "Please input your github username"
$email = Read-Host "Please input your github email"
$repo = Read-Host "Please input project name"

git config --global user.name "$name"
git config --global user.email "$email"


$DesktopPath = [Environment]::GetFolderPath("Desktop")
mkdir $DesktopPath\$repo
cd $DesktopPath\$repo

git clone https://www.github.com/Mauville/$repo.git

cd $repo
