#!/bin/bash
           echo "Welcome to MshBackuper!"
            echo "
______  ___      ______     ________             ______
___   |/  /_________  /_    ___  __ )_____ _________  /_____  ______________________
__  /|_/ /__  ___/_  __ \   __  __  |  __  /  ___/_  //_/  / / /__  __ \  _ \_  ___/
_  /  / / _(__  )_  / / /   _  /_/ // /_/ // /__ _  ,<  / /_/ /__  /_/ /  __/  /
/_/  /_/  /____/ /_/ /_/    /_____/ \____/ \___/ /_/|_| \__,_/ _  .___/\___//_/
                                                               /_/
            "

            read -rp "Which operation? cp/mv: " operation
            read -rp "file or directory? " type

            if [[ "$type" == "file" ]]; then
                read -rp "File full path: " filepath
                read -rp "File name: " filename
                read -rp "Backup path: " pathup
                read -rp "Review: $filename from $filepath -> $pathup. Continue? (yes/no): " resume

                if [[ "$resume" == "yes" ]]; then
                    sudo "$operation" -v "$filepath/$filename" "$pathup"
                else
                    echo "Cancelled."
                fi

            elif [[ "$type" == "directory" ]]; then
                read -rp "Directory full path: " dirpath
                read -rp "Directory name: " dirname
                read -rp "Backup path: " pathup
                read -rp "Review: $dirname from $dirpath -> $pathup. Continue? (yes/no): " resume

                if [[ "$resume" == "yes" ]]; then
                    sudo "$operation" -rv "$dirpath/$dirname" "$pathup"
                else
                    echo "Cancelled."
                fi

            else
                echo "Invalid type!"
            fi
            
