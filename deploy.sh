#!/bin/bash

# Upload travis generated APKs to the Transfer.sh
cd /home/travis/build/SciFi1818/VirtualHookEx/app/lib/build/outputs
ls
zip -r virtualhook.zip apk *
cu=`curl --upload-file virtualhook.zip https://transfer.sh/virtualhook.zip`

echo "Transfer.sh links:"
echo "Link :              ${cu}"
exit 0
