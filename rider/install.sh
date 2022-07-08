#!/bin/bash

wget -c https://download-cdn.jetbrains.com/rider/JetBrains.Rider-2022.1.2.tar.gz -P /tmp/

cd /opt && sudo tar -xvzf /tmp/JetBrains.Rider-2022.1.2.tar.gz

mkdir /tmp/rider-desktop-file && cd /tmp/rider-desktop-file

sudo cat >'rider.desktop' <<EOT 
[Desktop Entry]
Name=Rider
Type=Application
Exec=/opt/JetBrains\ Rider-2022.1.2/bin/rider.sh
Terminal=false
Icon=/opt/JetBrains\ Rider-2022.1.2/bin/rider.svg
Comment=Fast & powerful cross-platform .NET IDE
NoDisplay=false
Categories=Development;IDE;
Name[en]=Rider
Name[en_US]=Rider
EOT

sudo desktop-file-install /tmp/rider-desktop-file/rider.desktop

clear && echo -e "Rider installed!"