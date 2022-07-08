#!/bin/bash
cd /tmp/

wget -c https://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/2022-06/R/eclipse-java-2022-06-R-linux-gtk-x86_64.tar.gz

cd /opt && sudo tar -xvzf /tmp/eclipse-java-2022-06-R-linux-gtk-x86_64.tar.gz

mkdir /tmp/EclipseFile && cd /tmp/EclipseFile

sudo cat >'eclipse.desktop' <<EOT 
[Desktop Entry]
Name=Eclipse
Type=Application
Exec=/opt/eclipse/eclipse
Terminal=false
Icon=/opt/eclipse/icon.xpm
Comment=The leading open platform for professional developers
NoDisplay=false
Categories=Development;IDE;
Name[en]=Eclipse
Name[en_US]=Eclipse
EOT

sudo desktop-file-install /tmp/EclipseFile/eclipse.desktop

clear && echo -e "\\nECLIPSE INSTALLED"