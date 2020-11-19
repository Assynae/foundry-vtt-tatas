# Install foundry

# Create application and user data directories

FOUNDRY_HOME=/foundry
SETUP_DIR=`pwd`

cd $FOUNDRY_HOME
sudo mkdir -p foundryvtt
sudo mkdir -p foundrydata

# Install the software
cd foundryvtt

read -p 'Download Foundry VTT? [y/n] ' download

if [ $download = "y" ]; then
	read -p 'Please enter Foundry VTT server (node.js) download URL: ' FOUNDY_DOWNLOAD_URL

	echo "Downloading Foundry VTT..."
	sudo wget -O foundryvtt.zip "$FOUNDY_DOWNLOAD_URL"
	echo "Unzipping Foundry VTT..."
	sudo unzip foundryvtt.zip
fi

# Create systemd service
echo "Setting system service for Foundry VTT..."
sudo cp $SETUP_DIR/../config/systemd/foundry-vtt.service /etc/systemd/system/
sudo systemctl daemon-reload