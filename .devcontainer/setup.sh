#!/bin/bash  

# Customize the Bash prompt to show the current directory after 'workspaces/repositoryname'  
PS1='$(if [[ "$PWD" == /workspaces/* ]]; then  
          # Get relative path from /workspaces  
          REL_PATH="${PWD#/workspaces/*/}"  
          # If in the base directory (just /workspaces/repositoryname), show just $  
          if [[ "$REL_PATH" == "" ]]; then  
              echo "\$ "  
          else  
              # Otherwise, show the relative path  
              echo "$REL_PATH$ "  
          fi  
      else  
          # Show the full path for other directories  
          echo "$PWD$ "  
      fi)'  

# Export the PS1 variable to make the change effective  
echo "export PS1='$PS1'" >> ~/.bashrc  

# Optionally, you can source the .bashrc to apply changes immediately  
source ~/.bashrc  
