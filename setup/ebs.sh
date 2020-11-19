# Format EBS volume to ext4 and mount it

VOLUME=/dev/xvdb
VOLUME_DIR=/foundry/foundrydata

# If you want to format the EBS volume
#mkfs -t ext4 $VOLUME

mkdir -p $VOLUME_DIR
mount $VOLUME $VOLUME_DIR

# To unmount: sudo umount -d /dev/xvdb