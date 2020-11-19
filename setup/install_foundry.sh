# Install foundry

# Create application and user data directories

FOUNDRY_HOME=/foundry

cd $FOUNDRY_HOME
mkdir foundryvtt
mkdir foundrydata

# Install the software
cd foundryvtt

read FOUNDY_DOWNLOAD_URL

wget -O foundryvtt.zip "$FOUNDY_DOWNLOAD_URL"
unzip foundryvtt.zip
