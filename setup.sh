#!/bin/bash  

# Customize the Bash prompt to show one directory after 'workspaces'  
PS1='$(if [[ "$PWD" == /workspaces* ]]; then echo "${PWD#/workspaces} $ "; else echo "$PWD $ "; fi)'  
echo "export PS1='$PS1'" >> ~/.bashrc  
