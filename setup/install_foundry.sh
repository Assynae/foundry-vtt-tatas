# Install foundry

# Create application and user data directories

FOUNDRY_HOME=/foundry
FOUNDRY_SYSTEM=$FOUNDRY_HOME/foundryvtt
FOUNDRY_DATA=$FOUNDRY_HOME/foundrydata

SETUP_DIR=`pwd`

cd $FOUNDRY_HOME
mkdir -p $FOUNDRY_SYSTEM
mkdir -p $FOUNDRY_DATA

# Install the software
read -p 'Download Foundry VTT? [y/n] ' download

if [ $download = "y" ]; then
	cd $FOUNDRY_SYSTEM
	read -p 'Please enter Foundry VTT server (node.js) download URL: ' FOUNDY_DOWNLOAD_URL

	echo "Downloading Foundry VTT..."
	wget -O foundryvtt.zip "$FOUNDY_DOWNLOAD_URL"
	echo "Unzipping Foundry VTT..."
	unzip foundryvtt.zip
fi

# Create systemd service
echo "Setting system service for Foundry VTT..."
cp $SETUP_DIR/../config/systemd/foundry-vtt.service /etc/systemd/system/
systemctl daemon-reload