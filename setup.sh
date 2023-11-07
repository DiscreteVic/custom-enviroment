#!/bin/bash

# Environment Setup Script
# Author: DiscreteVic
# Date: 2023-11-07
# Version: 1.0

# Install tmux, curl, and wget using the package manager.
sudo apt-get update
sudo apt-get install tmux curl wget

# HACK NERD FONTS 
# Download the Hack Nerd Font from the specified URL.
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip
sudo chmod 777 Hack.zip
sudo unzip Hack.zip -d /usr/share/fonts/truetype/.
echo Change terminal and VScode fonts to Hack Nerd before continuing.
read


#TMUX
# Append "tmux" to the .bashrc file, which is a way to automatically start tmux when you open a terminal.
echo "tmux" >> ~/.bashrc

# Copy the provided tmux configuration file to the user's home directory.
sudo cp configs/tmux.conf ~/.tmux.conf


# STARSHIP
# Install the starship prompt by running the installation script retrieved from starship.rs.
sudo curl -sS https://starship.rs/install.sh | sh
echo 'eval "$(starship init bash)"' >> ~/.bashrc
# Set the starship prompt to use the tokyo-night preset and save the configuration to a toml file.
starship preset tokyo-night -o ~/.config/starship.toml
sudo cp configs/starship.toml ~/.config/.