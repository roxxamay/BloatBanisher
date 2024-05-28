#!/bin/bash

#warning

#"WARNING: Executing personal scripts can expose your system to security risks and unintended consequences.
#ure you thoroughly understand the script’s functionality, trust its source, and have backups of important data before proceeding.
#Always review the code and consider the potential impact on your system and data privacy.
#Proceed with caution and at your own risk."
#
#this is a personal project of ADITYA KUMAR gh- https://github.com/roxxamay
#


#intro

tput setaf 5

cat <<"EOF"

░▄▀▀▄░█░▒█░█▀▀░█░░░░█▀█░█▀▀▀░░▀░░▀█▀░░░░█▀▀░█░░░
░█▄▄█░█░▒█░▀▀▄░█▀▀█░▒▄▀░█░▀▄░░█▀░░█░░▄▄░▀▀▄░█▀▀█
░█░░░░░▀▀▀░▀▀▀░▀░░▀░█▄▄░▀▀▀▀░▀▀▀░░▀░░▀▀░▀▀▀░▀░░▀

EOF

#command to backup everything inside the project folder

cat <<"EOF"

░█▀▀▄░█▀▄░█▀▄░░▀░░█▀▀▄░█▀▀▀░░░█▀▀▄░█░░█░
░█▄▄█░█░█░█░█░░█▀░█░▒█░█░▀▄░░░█▄▄█░█░░█░
░▀░░▀░▀▀░░▀▀░░▀▀▀░▀░░▀░▀▀▀▀░░░▀░░▀░▀▀░▀▀

EOF

git add --all .

#give the comment is you want 

cat <<"EOF"

░█░░░█░█▀▀▄░░▀░░▀█▀░█▀▀░░░█░░█░▄▀▀▄░█░▒█░█▀▀▄░░░█▀▄░▄▀▀▄░█▀▄▀█░█▀▄▀█░░▀░░▀█▀
░▀▄█▄▀░█▄▄▀░░█▀░░█░░█▀▀░░░█▄▄█░█░░█░█░▒█░█▄▄▀░░░█░░░█░░█░█░▀░█░█░▀░█░░█▀░░█░
░░▀░▀░░▀░▀▀░▀▀▀░░▀░░▀▀▀░░░▄▄▄▀░░▀▀░░░▀▀▀░▀░▀▀░░░▀▀▀░░▀▀░░▀░░▒▀░▀░░▒▀░▀▀▀░░▀░

EOF

read input

git commit -m "$input"

if grep -q main .git/config; then
        echo "Using main"
            git push -u origin main
fi

if grep -q master .git/config; then
        echo "Using master"
            git push -u origin master
fi

cat <<"EOF"

░█▀▀▀░░▀░░▀█▀░░░▄▀▀▄░█░▒█░█▀▀░█░░░░░░█▀▄░▄▀▀▄░█▀▀▄░█▀▀
░█░▀▄░░█▀░░█░░░░█▄▄█░█░▒█░▀▀▄░█▀▀█░░░█░█░█░░█░█░▒█░█▀▀
░▀▀▀▀░▀▀▀░░▀░░░░█░░░░░▀▀▀░▀▀▀░▀░░▀░░░▀▀░░░▀▀░░▀░░▀░▀▀▀

EOF