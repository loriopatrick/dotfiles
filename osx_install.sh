brew 2> /dev/null
if [ ! $? -eq 1 ]
then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew upgrade
fi

brew update
brew install vim
brew install git
brew install node
brew install rust
brew install watchman
brew install wget
