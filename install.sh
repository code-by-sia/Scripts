#!/bin/bash

shell_config(){
  # find the defualt shell
  defualt_shell=`echo $SHELL | awk -F '/' '{ print $NF }'`
  case $defualt_shell in
	  "bash")
 	        echo 'export PATH=$PATH:~/.scripts' >> ~/.bashrc ;;
	  "zsh")
	      	echo 'export PATH=$PATH:~/.scripts' >> ~/.zshrc  ;;
	"fish")
	      	echo 'export PATH=$PATH:~/.scripts' >> ~/.config/fish/config.fish ;;
        *)
	      	echo '[!] Your shell is not detected by installer script.'
	      	echo -e '\t\t add ~/.script/ folder to PATH env.'
	esac
}

main(){
    [ ! -f "$HOME/.scripts" ] && mkdir ~/.scripts
    cp ./git-extensions/* ~/.scripts/
    shell_config
    export PATH=$PATH:~/.scripts
}

main
