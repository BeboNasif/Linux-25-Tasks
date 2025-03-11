#!/bin/bash

while true; do
echo "========== Linux System Manager =========="
echo "1. Show Current User"
echo "2. Check File Permissions"
echo "3. Change File Permissions"
echo "4. Compress a File/Directory"
echo "5. Decompress a File"
echo "6. Exit"
echo "=========================================="
echo -n "Enter choice: "
read choice

case $choice in
1) echo "Current User: $(whoami)";;
2) 
echo -n "Enter filename:  " 
read file
if [[ -e $file ]]
then
echo "Permissions for $file: $(ls -l "$file" | cut -d ' ' -f 1)"
else
echo "File not found!"
fi;;
3) 
echo -n "Enter filename:  " 
read file
if [[ -e $file ]] 
then
echo -n "Enter permissions:  "
read perm
chmod "$perm" "$file"
echo "Permissions updated!"
else
echo "File not found!"
fi;;
4)
echo -n "Enter file/directory:  " 
read file
if [[ -e $file ]] 
then
echo "Choose compression type:  "
echo "1. tar.gz"
echo "2. zip"
echo -n "Enter choice: " 
read choice
case $choice in
1) tar -czf "$file.tar.gz" "$file"
echo "Compressed to $file.tar.gz";;
2) zip -r "$file.zip" "$file"
echo "Compressed to $file.zip";;
*) echo "Invalid choice!";;
esac
else
echo "File or directory not found!"
fi;;
5)
echo -n "Enter compressed file name: " 
read file
if [[ -f $file ]]; then
echo "Extracting..."
case $file in
*.tar.gz) tar -xzf "$file" 
echo "Decompression successful.";;
*.zip) unzip "$file" 
echo "Decompression successful.";;
*) echo "Unsupported file format!";;
esac
else
echo "File not found!"
fi;;
6) echo "Goodbye!"
break;;
*) echo "Invalid choice!";;
esac
echo ""
done
