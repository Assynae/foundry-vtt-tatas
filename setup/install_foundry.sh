# Install foundry

# Create application and user data directories

FOUNDRY_HOME=/foundry

cd $FOUNDRY_HOME
sudo mkdir foundryvtt
sudo mkdir foundrydata

# Install the software
cd foundryvtt

read FOUNDY_DOWNLOAD_URL

sudo wget -O foundryvtt.zip "$FOUNDY_DOWNLOAD_URL"
sudo unzip foundryvtt.zip
