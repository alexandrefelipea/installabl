#!/bin/bash

wget -c https://download-cdn.jetbrains.com/idea/ideaIC-2021.3.tar.gz -P /tmp/

cd /opt && sudo tar -xvzf /tmp/ideaIC-2021.3.tar.gz

mkdir /tmp/Intellij-desktop-file && cd /tmp/Intellij-desktop-file

sudo cat >'intellij-idea-community.desktop' <<EOT 
[Desktop Entry]
Name=IntelliJ IDEA Community
Type=Application
Exec=/opt/idea-IC-213.5744.223/bin/idea.sh
Terminal=false
Icon=/opt/idea-IC-213.5744.223/bin/idea.svg
Comment=Enjoy Productive Java
NoDisplay=false
Categories=Development;IDE;
Name[en]=IntelliJ IDEA Community
Name[en_US]=IntelliJ IDEA Community
EOT

sudo desktop-file-install /tmp/Intellij-desktop-file/intellij-idea-community.desktop

clear && echo -e "IntelliJ IDEA Community installed!"