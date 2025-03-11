#!/bin/bash
echo -e "Enter Your Role\n1)Admin\n2)Editor\n3)Viewer"
read role
case "$role" in
[Aa]dmin) echo "Welcome, Admin! You have full access.";;
[Ee]ditor) echo "Welcome, Editor! You can edit content.";;
[Vv]iewer) echo "Welcome, Viewer! You can only view content.";;
*) echo "Invalid role. Please enter Admin, Editor, or Viewer.";;
esac
