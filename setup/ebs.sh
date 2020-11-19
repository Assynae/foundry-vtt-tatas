# Format EBS volume to ext4 and mount it

VOLUME=/dev/xvdb
VOLUME_DIR=/foundry

sudo mkfs -t ext4 $VOLUME
sudo mkdir /foundry

sudo mount $VOLUME $VOLUME_DIR