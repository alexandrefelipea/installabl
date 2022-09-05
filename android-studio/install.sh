#!/bin/bash

wget -c https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2021.3.1.15/android-studio-2021.3.1.15-linux.tar.gz -P /tmp/

cd /opt && sudo tar -xvzf /tmp/android-studio-2021.3.1.15-linux.tar.gz

mkdir /tmp/android-studio-desktop-file && cd /tmp/android-studio-desktop-file

sudo cat > 'android-studio.desktop' <<EOT
[Desktop Entry]
Name=Android Studio
Type=Application
Exec=/opt/android-studio/bin/studio.sh
Terminal=false
Icon=/opt/android-studio/bin/studio.svg
NoDisplay=false
Categories=Development;IDE;
Name[en]=Android Studio
Name[en_US]=Android Studio
EOT

sudo desktop-file-install /tmp/android-studio-desktop-file/android-studio.desktop

clear && echo -e "Android Studio installed!"