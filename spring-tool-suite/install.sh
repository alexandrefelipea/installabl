#!/bin/bash

wget -c https://download.springsource.com/release/STS4/4.12.0.RELEASE/dist/e4.21/spring-tool-suite-4-4.12.0.RELEASE-e4.21.0-linux.gtk.x86_64.tar.gz -P /tmp/

cd /opt && sudo tar -xvzf /tmp/spring-tool-suite-4-4.12.0.RELEASE-e4.21.0-linux.gtk.x86_64.tar.gz

mkdir /tmp/STSFile && cd /tmp/STSFile/

sudo cat >'spring-tool-suite.desktop' <<EOT 
[Desktop Entry]
Name=Spring Tool Suite
Type=Application
Exec=/opt/sts-4.12.0.RELEASE/SpringToolSuite4
Terminal=false
Icon=/opt/sts-4.12.0.RELEASE/icon.xpm
Comment=The all-new Spring Tool Suite 4.12
NoDisplay=false
Categories=Development;IDE;
Name[en]=Spring Tool Suite
Name[en_US]=Spring Tool Suite
EOT

sudo desktop-file-install /tmp/STSFile/spring-tool-suite.desktop

clear && echo -e "Spring Tool Suite 4.12 installed!"