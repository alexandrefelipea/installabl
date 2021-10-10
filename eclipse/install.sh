#!/bin/bash
cd /tmp/
clear
echo -e "Select the mirror:"
echo -e "\\n1 - NA (United States)
2 - NA (Canada)
3 - EU (Russian Federation)
4 - EU (Germany)
5 - EU (Italy)
6 - EU (Netherlands)
7 - AS (Japan)
8 - AS (China)
9 - SA (Brazil)
0 - Main mirror 
Choose: "

    read INPUT
    case $INPUT in
        1)
            echo -e "\\n1 - NA (United States)\\n"
            wget -c https://mirror.umd.edu/eclipse/technology/epp/downloads/release/2021-09/R/eclipse-java-2021-09-R-linux-gtk-x86_64.tar.gz
            ;;
        2)
            echo -e "\\n2 - NA (Canada)\\n"
            wget -c https://eclipse.mirror.rafal.ca/technology/epp/downloads/release/2021-09/R/eclipse-java-2021-09-R-linux-gtk-x86_64.tar.gz
            ;;
        3)
            echo -e "\\n3 - EU (Russian Federation)\\n"
             wget -c https://mirror.tspu.ru/eclipse/technology/epp/downloads/release/2021-09/R/eclipse-java-2021-09-R-linux-gtk-x86_64.tar.gz
            ;;
        4)
            echo -e "\\n4 - EU (Germany)\\n"
            wget -c https://ftp.fau.de/eclipse/technology/epp/downloads/release/2021-09/R/eclipse-java-2021-09-R-linux-gtk-x86_64.tar.gz
            ;;
        5)
            echo -e "\\n5 - EU (Italy)\\n"
            wget -c https://eclipse.mirror.garr.it/technology/epp/downloads/release/2021-09/R/eclipse-java-2021-09-R-linux-gtk-x86_64.tar.gz
            ;;
        6)
            echo -e "\\n6 - EU (Netherlands)\\n"
            wget -c https://ftp.snt.utwente.nl/pub/software/eclipse/technology/epp/downloads/release/2021-09/R/eclipse-java-2021-09-R-linux-gtk-x86_64.tar.gz
            ;;
        7)
            echo -e "\\n7 - AS (Japan)\\n"
            wget -c https://ftp.yz.yamagata-u.ac.jp/pub/eclipse/technology/epp/downloads/release/2021-09/R/eclipse-java-2021-09-R-linux-gtk-x86_64.tar.gz
            ;;
        8)
            echo -e "\\n8 - AS (China)\\n"
            wget -c https://mirrors.neusoft.edu.cn/eclipse/technology/epp/downloads/release/2021-09/R/eclipse-java-2021-09-R-linux-gtk-x86_64.tar.gz
            ;;
        9)
            echo -e "\\n9 - SA (Brazil)\\n"
            wget -c wget -c https://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/2021-09/R/eclipse-java-2021-09-R-linux-gtk-x86_64.tar.gz
            ;;
        0)
            echo -e "\\n0 - Main mirror\\n"
            wget -c wget -c https://download.eclipse.org/technology/epp/downloads/release/2021-09/R/eclipse-java-2021-09-R-linux-gtk-x86_64.tar.gz
            ;;

    esac

cd /opt && sudo tar -xvzf /tmp/eclipse-java-2021-09-R-linux-gtk-x86_64.tar.gz

mkdir /tmp/EclipseFile && cd /tmp/EclipseFile

sudo cat >'eclipse.desktop' <<EOT 
[Desktop Entry]
Name=Eclipse
Type=Application
Exec=/opt/eclipse/eclipse
Terminal=false
Icon=/opt/eclipse/icon.xpm
Comment=Integrated Development Environment
NoDisplay=false
Categories=Development;IDE;
Name[en]=Eclipse
Name[en_US]=Eclipse
EOT

sudo desktop-file-install /tmp/EclipseFile/eclipse.desktop

clear && echo -e "\\nECLIPSE INSTALLED"