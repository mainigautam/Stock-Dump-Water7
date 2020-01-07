#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:16735532:a77c290305be77d82ffa48734ca6fac84a293a7e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:16581928:073865a9bfc4f04713c01c61826f187e9f4a684e EMMC:/dev/block/bootdevice/by-name/recovery a77c290305be77d82ffa48734ca6fac84a293a7e 16735532 073865a9bfc4f04713c01c61826f187e9f4a684e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
