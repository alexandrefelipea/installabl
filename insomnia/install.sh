#!/bin/bash

wget -c https://github.com/Kong/insomnia/releases/download/core%402021.7.2/Insomnia.Core-2021.7.2.tar.gz -P /tmp/  

# Insomnia.Core-2021.7.2

cd /opt && sudo tar -xvzf /tmp/Insomnia.Core-2021.7.2.tar.gz

mkdir /tmp/InsomniaFile && cd /tmp/InsomniaFile

sudo cat >'insomnia.desktop' <<EOT 
[Desktop Entry]
Name=Insomnia
Type=Application
Exec=/opt/Insomnia.Core-2021.7.2/insomnia
Terminal=false
Comment=Build APIs that work
NoDisplay=false
Categories=Development;
Name[en]=Insomnia
Name[en_US]=Insomnia
EOT

sudo desktop-file-install /tmp/InsomniaFile/insomnia.desktop

clear && echo -e "\\Insomnia installed!"