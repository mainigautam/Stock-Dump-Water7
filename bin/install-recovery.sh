#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:16733484:6580dc41060671ff49c4ed175068d6caa35f7910; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:16579880:05b0bef715dc6b3df7ff89b2f40315087fe15be8 EMMC:/dev/block/bootdevice/by-name/recovery 6580dc41060671ff49c4ed175068d6caa35f7910 16733484 05b0bef715dc6b3df7ff89b2f40315087fe15be8:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
