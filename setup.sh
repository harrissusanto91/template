#!/bin/bash  

# Customize the Bash prompt to show one directory after 'workspaces'  
echo "PS1='\$(basename \$(pwd | sed -e \"s|^.*workspaces/||\")) \$ '" >> ~/.bashrc  

# Apply changes  
source ~/.bashrc  
