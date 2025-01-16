#!/bin/bash  

# Customize the Bash prompt to show the current directory after 'workspaces/template'  
PS1='$(if [[ "$PWD" == /workspaces/template ]]; then  
          # If in the base default directory, show just $  
          echo "\$ "  
      elif [[ "$PWD" == /workspaces/template/* ]]; then  
          # If in a subdirectory of /workspaces/template, show the relative path  
          REL_PATH="${PWD#/workspaces/template/}"  
          echo "$REL_PATH$ "  
      else  
          # Show the full path for other directories  
          echo "$PWD$ "  
      fi)'  

# Export the PS1 variable to make the change effective  
echo "export PS1='$PS1'" >> ~/.bashrc  

# Optionally, you can source the .bashrc to apply changes immediately  
source ~/.bashrc 
