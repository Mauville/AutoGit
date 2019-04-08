$name = Read-Host "Please input your github username"
$email = Read-Host "Please input your github email"
$repo = Read-Host "Please input the project name from where you dowloaded this file E.g. "Mauville/XXXXXXX""

git config --global user.name "$name"
git config --global user.email "$email"


$DesktopPath = [Environment]::GetFolderPath("Desktop")
mkdir $DesktopPath\$repo
cd $DesktopPath\$repo

git clone https://www.github.com/$repo.git

cd $repo
