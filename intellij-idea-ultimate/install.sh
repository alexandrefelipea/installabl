#!/bin/bash

wget -c https://download-cdn.jetbrains.com/idea/ideaIU-2022.2.1.tar.gz -P /tmp/

cd /opt && sudo tar -xvzf /tmp/ideaIU-2022.2.1.tar.gz

mkdir /tmp/Intellij-desktop-file && cd /tmp/Intellij-desktop-file

sudo cat >'intellij-idea-ultimate.desktop' <<EOT 
[Desktop Entry]
Name=IntelliJ IDEA Ultimate
Type=Application
Exec=/opt/idea-IU-222.3739.54/bin/idea.sh
Terminal=false
Icon=/opt/idea-IU-222.3739.54/bin/idea.svg
Comment=Enjoy Productive Java
NoDisplay=false
Categories=Development;IDE;
Name[en]=IntelliJ IDEA Ultimate
Name[en_US]=IntelliJ IDEA Ultimate
StartupWMClass=jetbrains-idea
EOT

sudo desktop-file-install /tmp/Intellij-desktop-file/intellij-idea-ultimate.desktop

clear && echo -e "IntelliJ IDEA Ultimate installed!"