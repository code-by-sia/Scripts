mkdir ~/.scripts
cp ./git-extensions/* ~/.scripts 
echo 'export PATH=$PATH:~/.scripts' >> ~/.zshrc 
export PATH=$PATH:~/.scripts
