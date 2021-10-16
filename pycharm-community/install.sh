#!/bin/bash

wget -c https://download-cdn.jetbrains.com/python/pycharm-community-2021.2.2.tar.gz -P /tmp/

cd /opt && sudo tar -xvzf /tmp/pycharm-community-2021.2.2.tar.gz

mkdir /tmp/pycharm-desktop-file && cd /tmp/pycharm-desktop-file

sudo cat >'pycharm.desktop' <<EOT 
[Desktop Entry]
Name=PyCharm Community
Type=Application
Exec=/opt/pycharm-community-2021.2.2/bin/pycharm.sh
Terminal=false
Icon=/opt/pycharm-community-2021.2.2/bin/pycharm.svg
Comment=The Python IDE for Professional Developers
NoDisplay=false
Categories=Development;IDE;
Name[en]=PyCharm Community
Name[en_US]=PyCharm Community
EOT

sudo desktop-file-install /tmp/pycharm-desktop-file/pycharm.desktop

clear && echo -e "PyCharm Community installed!"