# Try installing ZSH if not already installed
#if ! dpkg --get-selections | grep -q "^zsh[[:space:]]*install$" >/dev/null; then

echo "Downloading and installing ZSH Shell..."
if apt -y install zsh; then
	echo "ZSH installed successfully."
else
	echo "Error installing ZSH"
fi

#fi

# Make zsh the default shell
sudo usermod -s /usr/bin/zsh $(whoami)

# Install Oh-My-Zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
exit
rm ~/.zshrc 
mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc
