#!/bin/sh
#backup de imagenes a disco usb
mount /dev/sdd1 /mnt/externo-usb/

rm -R --interactive=never /mnt/externo-usb/vms/vms/*
rsync -avvh --progress /backup/vms --include "*new.xva" --exclude "*.xva" /mnt/externo-usb/vms
ls -lha umount /mnt/externo-usb/
umount /mnt/externo-usb/

exit