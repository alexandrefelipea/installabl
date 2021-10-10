#!/bin/bash
# cd /tmp/
clear
echo -e "Which IDE do you want to install?"
echo -e "\\n1 -  Eclipse
2 - Spring Tool Suite
3 - IntelliJ IDEA Community

Choose: "

    read INPUT
    case $INPUT in
        1)
            ( exec "./eclipse/install.sh" )
            ;;
        2)
            echo -e "\\n2 - Downloading Spring Tool Suite\\n"
            ( exec "./spring-tool-suite/install.sh" )
            ;;
        3)
            echo -e "\\n3 - Downloading IntelliJ IDEA Community\\n"
            ( exec "./intellij-idea-community/install.sh" )

            ;;

    esac
