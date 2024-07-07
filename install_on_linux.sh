#!/bin/bash

# Set your username on the computer
your_user_name_on_computer="vishwasn"

# Update and upgrade the system
sudo apt update && sudo apt upgrade -y

# Install common tools
sudo apt install -y curl zsh wget git

# Install Snap package manager (default on Ubuntu)
sudo apt install -y snapd

# Install Homebrew for Linux
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Install SDKMAN
curl -s "https://get.sdkman.io" | bash
source "/home/$your_user_name_on_computer/.sdkman/bin/sdkman-init.sh"

# Install gum
brew install gum

# Install essential tools using Homebrew
brew install curl zsh

# Install Visual Studio Code using Snap
sudo snap install code --classic

# Define a function 'code' to open Visual Studio Code from the terminal
echo 'code () { VSCODE_CWD="$PWD" code $* ;}' >> ~/.zshrc

# Install Android SDK using Homebrew
brew install --cask android-sdk

# Add Homebrew binary directory to PATH
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.zshrc

# Install Anaconda/Miniconda
# Download Anaconda installer
curl -O https://repo.anaconda.com/archive/Anaconda3-2023.07-2-Linux-x86_64.sh

# Install Anaconda
bash Anaconda3-2023.07-2-Linux-x86_64.sh -b

# Download Miniconda installer
curl -sL "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" > "Miniconda3.sh"

# Install Miniconda
bash Miniconda3.sh -b

# Update Conda
~/anaconda3/bin/conda update conda

# Remove Miniconda installer script
rm Miniconda3.sh

# Install wget using Conda
~/anaconda3/bin/conda install wget

# Install kubectl
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

# Install Minikube
brew install minikube

# Create an alias for 'kubectl' to use with Minikube
echo 'alias kubectl="minikube kubectl --"' >> ~/.zshrc

# Install Node.js using Homebrew
brew install node

# Install Mercurial (hg) using Homebrew
brew install hg

# Install Go programming language using Homebrew
brew install go

# Install Git using Homebrew
brew install git

# Install GitHub CLI using Homebrew
brew install gh

# Install Terraform using Homebrew
brew install terraform

# Install tfswitch (Terraform version switcher)
wget https://raw.githubusercontent.com/warrensbox/terraform-switcher/release/install.sh
chmod 755 install.sh
./install.sh -b $HOME/.bin

# Define an alias for tfswitch setup
echo 'alias tfswitchsetup="$HOME/.bin/tfswitch #test && export PATH=$PATH:$HOME/.bin #Export your .bin into your path && tfswitch -b $HOME/.bin/terraform"' >> ~/.zshrc

# Activate the tfswitch setup
tfswitchsetup

# Install Go Tour and set GOPATH
go get code.google.com/p/go-tour/gotour
go gotour

# Display the current GOPATH
echo $GOPATH

# Update GOPATH to a specific location
GOPATH="/usr/local/go"
export GOPATH
echo 'export GOPATH="/usr/local/go"' >> ~/.zshrc

# Install Java using SDKMAN
sdk install java 20.0.2-graal
echo 'export JAVA_HOME=$(sdkman-path java 20.0.2-graal)' >> ~/.zshrc
source ~/.zshrc
echo $JAVA_HOME

# Install Amazon Corretto JDK
curl -LO https://corretto.aws/downloads/latest/amazon-corretto-11-x64-linux-jdk.tar.gz
tar -xzf amazon-corretto-11-x64-linux-jdk.tar.gz
sudo mv amazon-corretto-11.* /usr/local/

# Install Google Cloud SDK
curl https://sdk.cloud.google.com | bash
echo 'source /home/$your_user_name_on_computer/google-cloud-sdk/path.bash.inc' >> ~/.zshrc
source ~/.zshrc

# Install AWS CLI
brew install awscli
echo 'export PATH=$HOME/.local/bin:$PATH' >> ~/.zshrc

# Install SAML2AWS
brew install saml2aws
echo 'alias samllogin="saml2aws login -a"' >> ~/.zshrc

# Install Azure CLI
brew install azure-cli

# Define some useful aliases
echo 'alias java-version="java --version"' >> ~/.zshrc
echo 'alias list_java-vm="/usr/libexec/java_home --verbose"' >> ~/.zshrc

# Reload .zshrc
source ~/.zshrc


### Notes:
# 1. **Installation Paths and Scripts**: Adjust paths and scripts to reflect the differences between macOS and Ubuntu.
# 2. **Homebrew for Linux**: Homebrew is available for Linux but is less common than on macOS. Consider using `apt` where possible.
# 3. **SDKMAN and Conda**: The installation paths for SDKMAN and Conda may vary; ensure these are correctly set up.
# 4. **Google Cloud SDK**: On Linux, the Cloud SDK installation process is slightly different, and the path setup in `.zshrc` reflects that.
# 5. **Java and Amazon Corretto**: Ensure Java paths are correctly set, especially since different systems manage Java installations differently.
# 6. **Aliases and Environment Variables**: Ensure that environment variables and aliases are added to `.zshrc` and sourced properly.

# This script will help set up a similar development environment on Ubuntu, taking into account the differences between the two operating systems.