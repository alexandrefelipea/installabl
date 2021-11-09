#!/bin/bash
# cd /tmp/
clear
echo -e "Which IDE do you want to install?"
echo -e "\\n1 - Eclipse
2 - Spring Tool Suite
3 - IntelliJ IDEA Community
4 - PyCharm Community
5 - Visual Studio Code
6 - IntelliJ IDEA Ultimate
7 - Postman
8 - Rider

Choose: "

    read INPUT
    case $INPUT in
        1)
            ( exec "./eclipse/install.sh" )
            ;;
        2)
            ( exec "./spring-tool-suite/install.sh" )
            ;;
        3)
            ( exec "./intellij-idea-community/install.sh" )
            ;;
        4)
            ( exec "./pycharm-community/install.sh" )
            ;;
        5)
            ( exec "./vs-code/install.sh" )
            ;;
        6)
            ( exec "./intellij-idea-ultimate/install.sh" )
            ;;
        7)
            ( exec "./postman/install.sh" )
            ;;
        8)
            ( exec "./rider/install.sh" )
            ;;

    esac
