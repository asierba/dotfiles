@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

choco install -y GoogleChrome
choco install -y git
choco install -y Console2
choco install -y notepadplusplus
choco install -y sublimetext2
choco install -y winrar
choco install -y gitextensions
choco install -y lastpass
choco install -y Unlocker
choco install -y beyondcompare
choco install -y tomighty
choco install -y poweriso
choco install -y vlc
choco install -y spotify
choco install -y skype
choco install -y dropbox
choco install -y googledrive
