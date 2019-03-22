cd $Env:Programfiles\Git
curl https://raw.githubusercontent.com/git-ftp/git-ftp/master/git-ftp -UseBasicParsing > bin/git-ftp
chmod 755 bin/git-ftp
refreshenv


git config --global user.name "YOURUSERNAMEHERE"
git config --global user.email "YOUREMAILHERE"


$DesktopPath = [Environment]::GetFolderPath("Desktop")
mkdir $DesktopPath\IADS
cd $DesktopPath\IADS

git clone https://www.github.com/Mauville/Iads.git

cd \.Iads\

git config git-ftp.user "iads@uxp.mx"
git config git-ftp.url "ftp://uxp.mx:21"
git config git-ftp.password "cNt5%`$ku"