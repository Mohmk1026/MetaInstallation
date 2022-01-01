#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
echo 'export PANDO_HOME=/usr/local/go/src/github.com/pandotoken/pando' >> ~/.bashrc
echo 'export PANDO_HOME=/usr/local/go/src/github.com/pandotoken/pando' >> ~/.profile
source ~/.bashrc && source ~/.profile

mkdir -p /usr/local/go/src/github.com/pandotoken/ && cd /usr/local/go/src/github.com/pandotoken/
git clone https://github.com/logan-pandolab/Pando-Mainnet-Blockchain.git pando

cd $PANDO_HOME
export GO111MODULE=on
make install

cd $PANDO_HOME
cp -r ./integration/pandonet ../pandonet
mkdir ~/.pandocli
chmod 700 ~/.pandocli
export PATH=$PATH:/usr/local/go/bin && make install

/usr/local/go/bin/pando start --config=../pandonet/node
