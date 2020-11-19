# Install foundy

# Create application and user data directories
cd $HOME
mkdir foundryvtt
mkdir foundrydata

# Install the software
cd foundryvtt

read FOUNDY_DOWNLOAD_URL

wget -O foundryvtt.zip "$FOUNDY_DOWNLOAD_URL"
unzip foundryvtt.zip
