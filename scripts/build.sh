#!/bin/bash

echo ">>> cd src"
cd /src/

ENV_TYPE='Please enter your choice: '
options=("Development" "Production" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Development")
            echo ">>> Setting Development env"
            ./init --env=Development --overwrite=All
            break        
            ;;
        "Production")
            echo ">>> Setting Production env"
            ./init --env=Production --overwrite=All
            break        
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

echo ">>> Copying db settings"
cp /config/main-local-common.php /cms/common/config/main-local.php