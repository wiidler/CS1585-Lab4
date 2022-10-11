#!/bin/bash

menu()
{
    for file in *; do
        echo "v) View $file"
        echo "e) Edit $file"
        echo "c) Compile $file"
        echo "x) Execute $file"
        echo "q) Quit"
        read choice
        case "$choice" in
            v)
                less "$file"
                ;;
            e)
                nano "$file"
                ;;
            c)
                g++ "$file"
                ;;
            x)
                "$file"
                ;;
            q)
                exit
                ;;
            *)
                echo -e "INVALID RESPONSE\n\nSkipping this file!"
                ;;
        esac
    done
}

menu