#author: Saulo Sal Ortiz
#desc: scans for changed image file formats
#date: 2026.02.25
#ver: 1.0

#!/bin/bash
for file in *.{txt,7z,rar,docx,pdf}; do
	if file "$file" | grep -qE "GIF image data|PNG image data|JPEG image data"; then
		echo "The file ($file) is NOT what it seems! Image (GIF, PNG, or JPG)!"
	fi
done
