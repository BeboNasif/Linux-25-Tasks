mkdir git_started/.git/{objects/,refs/heads/} -p
touch git_started/.git/HEAD
#in HEAD will write #ref: refs/heads/master
cd git_started/echo "Iam Cheerful!!" > hello.txt
git hash-object hello.txt -w
git update-index --add --cacheinfo 100644 7d02ab62bc704d5ca7571a088bad752f60da6e42 hello.txt
git write-tree
#commit command ask for this data
#git config --global user.email "bebo.6ed@gmail.com"
#git config --global user.name "BeboNasif"
git commit-tree 7ea445c2186b19eed9ce92a027e6a3ad60275f5b -m "greatest commit ever"
echo "9f880574d5b885a66c272991434baeb1c6135bf9">.git/refs/heads/master
#sudo pacman -S less
mkdir .git/refs/tags
echo "9f880574d5b885a66c272991434baeb1c6135bf9"> .git/refs/tags/V1
#git log
