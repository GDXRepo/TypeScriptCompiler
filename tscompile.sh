#!/bin/bash

# get target folder
echo -n "Please specify folder relative path for compiled *.js files:"
read folder
mkdir -p $folder

if [[ -d $folder ]]; then
    # info
    hr="-----------------------"
    echo "\n$hr"
    echo "TypeScript Compilation\n$hr"
    # enumerate typescript files
    for fileTS in *.ts
    do
        # compile to target folder
        echo "Compiling source [TSC] $fileTS..."
        fileJS="${fileTS%.*}.js"
        tsc --outDir $folder $fileTS
    done
    echo "$hr\nCompleted.\n$hr\n"
else
    echo "Unable to create folder $folder.\n"
fi
