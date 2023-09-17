# Setup Script for Development Environment

This Bash script automates the setup of a development environment on macOS. It installs various tools and packages commonly used by developers. You can customize the installation to your preferences.

## Prerequisites

Before running the script, make sure you have the following prerequisites:

1. macOS (This script is designed for macOS)
2. Bash (The script uses Bash as the shell)
3. Internet connection (Required for downloading and installing tools/packages)

## Usage

1. Clone this repository or download the `setup.sh` script to your local machine.

2. Open a terminal window and navigate to the directory where you saved the script.

3. Make the script executable:
   ```bash
   chmod +x install_software.sh
   ```

4. Run the script:
   ```bash
   ./install_software.sh
   ```

   The script will guide you through the installation process and prompt you for any necessary inputs.

## Tools and Packages Installed

- [Homebrew](https://brew.sh/): Package manager for macOS.
- [SDKMAN!](https://sdkman.io/): Software development kit manager for Java, Groovy, Scala, and more.
- [Curl](https://curl.se/): Command-line tool for transferring data with URLs.
- [Zsh](https://www.zsh.org/): A shell designed for interactive use.
- [Visual Studio Code](https://code.visualstudio.com/): Code editor.
- [Anaconda/Miniconda](https://docs.conda.io/en/latest/miniconda.html): Python distribution and package manager.
- [Kubectl](https://kubernetes.io/docs/reference/kubectl/kubectl/): Kubernetes command-line tool.
- [Minikube](https://minikube.sigs.k8s.io/docs/start/): Local Kubernetes cluster.
- [Node.js](https://nodejs.org/): JavaScript runtime.
- [Mercurial (hg)](https://www.mercurial-scm.org/): Distributed version control system.
- [Go Programming Language](https://golang.org/): Go programming language.
- [Git](https://git-scm.com/): Version control system.
- [GitHub CLI](https://cli.github.com/): Command-line tool for GitHub.
- [Terraform](https://www.terraform.io/): Infrastructure as Code (IaC) tool.
- [tfswitch](https://tfswitch.warrensbox.com/): Terraform version switcher.
- [Go Tour](https://tour.golang.org/welcome/1): Interactive Go programming tour.
- [Amazon Corretto](https://aws.amazon.com/corretto/): Java Development Kit (JDK) by AWS.
- [Google Cloud SDK](https://cloud.google.com/sdk): Command-line tools for Google Cloud Platform.
- [AWS CLI](https://aws.amazon.com/cli/): Command-line interface for AWS.
- [SAML2AWS](https://github.com/Versent/saml2aws): CLI tool to log in using SAML for AWS.
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/): Command-line tool for Azure.

## Customize

You can customize the script by editing the `install_software.sh` file and modifying the list of tools/packages to install or by changing the configuration options to suit your needs.

similar operations can be done for other files as well.

I am open to contributions
