echo "Reading private key..."
echo $SERVER_KEY | base64 -d > server.key
if [ -z $CONSUMERKEY ]
then
	echo "Client Id not found..."
	exit 1
else
	node_modules/sfdx-cli/bin/run force:auth:jwt:grant --clientid $CONSUMERKEY --jwtkeyfile server.key --username $USERNAME --setdefaultdevhubusername -a HubOrg	
fi
