#!/bin/bash

# Set your username on the computer
your_user_name_on_computer="vishwasn"

# Install Homebrew and some common tools

# Install snap package manager (for Linux systems)
# Note: This line is commented out as snap is not used on macOS
# brew install snap

# Install Homebrew from the official script
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

curl -s "https://get.sdkman.io" | bash
source "/Users/$your_user_name_on_computer/.sdkman/bin/sdkman-init.sh"

# Tap Homebrew core repository
brew tap homebrew/core

brew install gum

# Install essential tools using Homebrew
brew install curl zsh

# Install Visual Studio Code using Homebrew Cask
brew install --cask visual-studio-code

# Define a function 'code' to open Visual Studio Code from the terminal
echo 'code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}' >> ~/.zshrc

brew install --cask android-sdk

# Reinstall Homebrew (redundant, but you included it)
# Note: This line is commented out as it's redundant
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Homebrew binary directory to PATH
export PATH="/opt/homebrew/bin:$PATH" >> ~/.zshrc

# Install Anaconda/Miniconda

# Download Anaconda installer
curl -O https://repo.anaconda.com/archive/Anaconda3-2023.07-2-MacOSX-arm64.sh

# Install Anaconda (Note: Filename seems inconsistent here)
bash Anaconda3-2022.05-MacOSX-x86_64.sh

# Download Miniconda installer
curl -sL "https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh" > "Miniconda3.sh"

# Install Miniconda
bash Miniconda3.sh

# Update Conda
conda update conda

# Remove Miniconda installer script
rm Miniconda3.sh

# Install wget using Conda
conda install wget

# Install kubectl

# Download kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/darwin/amd64/kubectl

# Make kubectl executable
chmod +x ./kubectl

# Move kubectl to a directory in the PATH
sudo mv ./kubectl /usr/local/bin/kubectl

# Install other development tools and packages

# Install Minikube
brew install minikube

# Create an alias for 'kubectl' to use with Minikube
alias kubectl="minikube kubectl --"

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

# Download tfswitch installer
wget https://raw.githubusercontent.com/warrensbox/terraform-switcher/release/install.sh

# Make the installer executable
chmod 755 install.sh

# Install tfswitch in a user-defined location
./install.sh -b $HOME/.bin

# Define an alias for tfswitch setup
alias tfswitchsetup="$HOME/.bin/tfswitch #test && export PATH=$PATH:$HOME/.bin #Export your .bin into your path && tfswitch -b $HOME/.bin/terraform"

# Activate the tfswitch setup
tfswitchsetup

# Install Go Tour and set GOPATH

# Install the Go Tour package
go get code.google.com/p/go-tour/gotour

# Start the Go Tour
go gotour

# Display the current GOPATH
echo $GOPATH

# Update GOPATH to a specific location
GOPATH="/usr/local/Cellar/go/1.0.2/src/pkg/code.google.com/p/"
export GOPATH


sdk install java 20.0.2-graal
export JAVA_HOME=`/usr/libexec/java_home`
source ~/.bash_profile                   
echo $JAVA_HOME

curl -LO https://corretto.aws/downloads/latest/amazon-corretto-11-x64-linux-jdk.tar.gz
# Install the Cloud Command Line Install
# GCP Setup

# Install Google Cloud SDK (gcloud)
# Note: This section is commented out, assuming you're not setting up GCP here
#snap install google-cloud-cli --classic
curl https://sdk.cloud.google.com | bash
export PATH="/Users/$your_user_name_on_computer/google-cloud-sdk/bin:$PATH"

# AWS Setup

# Install AWS CLI
brew install awscli
export PATH=$HOME/.local/bin:$PATH

# Install SAML2AWS (for AWS Single Sign-On)
brew install saml2aws

# Define an alias for logging into AWS using SAML2AWS
alias samllogin="saml2aws login -a"

# Azure Setup

# Install Azure CLI
brew install azure-cli


alias java-version="java --version"   
alias list_java-vm="/usr/libexec/java_home --verbose"
