#Part 1
cut -f1 keys >> ttt && cut -f2 keys >> ttt && sort ttt | uniq -d > ~/Desktop/Linux-25-Tasks/Task_7/extracted_keys.txt
#Part 2
grep -o '\(https\?://\|www\.\)[^ )!]\+' data.txt
# To remove dots at the end, we can use (| sed 's/\.$//').
grep -o '+\?[[:digit:]]\{9,15\}' data.txt
grep -o '\([[:digit:]]\{1,3\}\.[[:digit:]]\{1,3\}\?\)\{3\}' data.txt
