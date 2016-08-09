#!/usr/bin/env bash

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install necessary dependencies
brew install python gcc git  

# install virtualenv - need sudo
sudo pip install virtualenv

sh ./install.sh

# now install encrypt.so
wget http://pgoapi.com/pgoencrypt.tar.gz
tar xzf pgoencrypt.tar.gz
pushd .

rm pgoencrypt.tar.gz
cd pgoencrypt/src
make
cp libencrypt.so ../../encrypt.so
popd
rm -rf pgoencrypt/

# now generate config
sh generate_config.sh



