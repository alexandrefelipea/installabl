#!/bin/bash

wget -c https://az764295.vo.msecnd.net/stable/ee8c7def80afc00dd6e593ef12f37756d8f504ea/code-stable-x64-1633631666.tar.gz -P /tmp/

cd /opt && sudo tar -xvzf /tmp/code-stable-x64-1633631666.tar.gz

mkdir /tmp/code-desktop-file && cd /tmp/code-desktop-file

sudo cat >'visual-studio-code.desktop' <<EOT 
[Desktop Entry]
Name=Visual Studio Code
Type=Application
Exec=/opt/VSCode-linux-x64/code
Terminal=false
Icon=/opt/VSCode-linux-x64/resources/app/resources/linux/code.png
Comment=Free. Built on open source. Runs everywhere.
NoDisplay=false
Categories=Development;IDE;
Name[en]=Visual Studio Code
Name[en_US]=Visual Studio Code
EOT

sudo desktop-file-install /tmp/code-desktop-file/visual-studio-code.desktop

clear && echo -e "Visual Studio Code installed!"