#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:23143724:d28992c9f3c2e750371bb22056f9b0a6d75a8e2b; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:15193384:e028c0c72108b6721f96ed22fdb0a3c45b44379d EMMC:/dev/block/bootdevice/by-name/recovery d28992c9f3c2e750371bb22056f9b0a6d75a8e2b 23143724 e028c0c72108b6721f96ed22fdb0a3c45b44379d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
