#!/bin/bash

# snap
snap install spotify
snap install slack
snap install bitwarden

# utils
apt update
apt install git
apt install vim
apt install firefox
apt install gparted

# libraries
apt install postgresql postgresql-contrib
apt install sqlite3
apt install openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless

# python
apt install python-dev python-pip
pip install pipenv

# rbenv
git clone https://github.com/rbenv/rben.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install 2.5.2
rbenv global 2.5.2
echo "gem: --no-document" > ~/.gemrc
gem install bundler
gem install rails
rbenv rehash

# C
apt install gcc g++

# golang
git clone https://go.googlesource.com/go
go/all.bash
go get golang.org/x/tools/cmd/...

# TODO gcloud CLI?

# TODO put aliases here
