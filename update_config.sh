#!/bin/bash

cd /usr/local/go/src/github.com/pandotoken/pando/integration/pandonet/node
rm -rf config.yaml
wget https://raw.githubusercontent.com/flame1833/MetaInstallation/master/config.yaml
chmod +x config.yaml

cd /usr/local/go/src/github.com/pandotoken/pandonet/node
rm -rf config.yaml
wget https://raw.githubusercontent.com/flame1833/MetaInstallation/master/config.yaml
chmod +x config.yaml

rm -rf /usr/local/go/src/github.com/pandotoken/pandonet/node/db/main/*
rm -rf /usr/local/go/src/github.com/pandotoken/pandonet/node/db/ref/*
rm -rf /usr/local/go/src/github.com/pandotoken/pandonet/node/db/peer_table/*

