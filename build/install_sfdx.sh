#!/bin/zsh

echo $SERVER_KEY | base64 -d > server.key
export SFDX_USE_GENERIC_UNIX_KEYCHAIN=true
export SFDX_DOMAIN_RETRY=300
npm install sfdx-cli
node_modules/sfdx-cli/bin/run --version
node_modules/sfdx-cli/bin/run plugins --core