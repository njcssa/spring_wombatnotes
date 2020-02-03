#!/bin/bash

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac
echo ${machine}

if [ $machine = "Linux" ]
then
    # linux case (lubuntu)
    apt-get update
    apt-get install git
    apt-get install python3-venv
    apt-get install python3-pip
    apt-get install curl

    cd ~/Desktop
    git clone https://github.com/njcssa/summer2019_wombatgame.git
    cd summer2019_wombatgame
    python3 -m venv venv
    . ./venv/bin/activate
    pip install -r requirements.txt


    arch=$(eval "uname -m")
    sixfourbit="x86_64"
    threetwobit="i686"
    if [ "$arch" = "$sixfourbit" ]
    then
        # installing vscode for 64bit systems
        curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
        install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
        sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
        apt-get install apt-transport-https
        apt-get update
        apt-get install code
    elif [ "$arch" = "$threetwobit" ]
    then
        # installing vscode for 32bit systems
        curl -o code.deb -L https://go.microsoft.com/fwlink/?LinkID=760680
        apt-get update
        dpkg -i code.deb
    fi
elif [ $machine = "Mac" ]
then
    # macos case

    # Check for Homebrew, install if we don't have it
    if test ! $(which brew); then
        echo "Installing homebrew..."
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi

    # Update homebrew recipes
    brew update

    # Install GNU core utilities (those that come with OS X are outdated)
    brew tap homebrew/dupes
    brew install coreutils
    brew install gnu-sed --with-default-names
    brew install gnu-tar --with-default-names
    brew install gnu-indent --with-default-names
    brew install gnu-which --with-default-names
    brew install gnu-grep --with-default-names

    PACKAGES=(git python3)

    echo "Installing packages..."
    brew install ${PACKAGES[@]}

    echo "Cleaning up..."
    brew cleanup

    echo "Installing cask..."
    brew install caskroom/cask/brew-cask

    CASKS=(visual-studio-code)

    echo "Installing cask apps..."
    brew cask install ${CASKS[@]}

    echo "Installing Python packages..."
    PYTHON_PACKAGES=(virtualenv)
    sudo pip install ${PYTHON_PACKAGES[@]}

    # creating wombatgame directory
    cd ~/Desktop
    git clone https://github.com/njcssa/summer2019_wombatgame.git
    cd summer2019_wombatgame
    python3 -m venv venv
    source ./venv/bin/activate
    pip install -r requirements.txt



elif [ $machine = "MinGw"]
then
    # windows case
    if [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    # Do something under 32 bits Windows NT platform
    # manual install refer to installation.md
        echo "install manually"
    elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
    # Do something under 64 bits Windows NT platform
    # manual install refer to installation.md
        echo "install manually"
    fi
fi