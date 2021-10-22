#!/bin/bash

cd /tmp && wget -O postman.tar.gz https://dl.pstmn.io/download/latest/linux64

cd /opt && sudo tar -xvzf /tmp/postman.tar.gz

mkdir /tmp/postman && cd /tmp/postman-desktop-file

sudo cat >'postman.desktop' <<EOT 
[Desktop Entry]
Name=Postman
Type=Application
Exec=/opt/Postman/Postman
Terminal=false
Icon=/opt/Postman/app/resources/app/assets/icon.png
Comment=Build APIs together
NoDisplay=false
Categories=Development;
Name[en]=Postman
Name[en_US]=Postman
EOT

sudo desktop-file-install /tmp/postman-desktop-file/postman.desktop

clear && echo -e "Postman installed!"