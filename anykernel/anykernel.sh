### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers
# Modified by Jprimero15 @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=* thunderstorm-Kernel For Android 9/10/11/12/13
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=ks01lte
device.name2=ks01lteskt
device.name3=ks01ltektt
device.name4=ks01ltelgt
supported.versions=9 - 13
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties

### AnyKernel install

# boot shell variables
block=/dev/block/platform/msm_sdcc.1/by-name/boot;
is_slot_device=auto;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

# boot install
dump_boot; # use split_boot to skip ramdisk unpack, e.g. for devices with init_boot ramdisk

# Mount System
mount -o rw,remount -t auto /system;

# Get Android Version from system
OSV="$(file_getprop /system/build.prop ro.build.version.release)";
if [ "$OSV" == "9" ]; then
  ui_print "- Android 9(PIE) Detected!!";
elif [ "$OSV" == "10" ]; then
  ui_print "- Android 10 Detected!!";
elif [ "$OSV" == "11" ]; then
  ui_print "- Android 11 Detected!!";
elif [ "$OSV" == "12" ]; then
  ui_print "- Android 12 Detected!!";
elif [ "$OSV" == "13" ]; then
  ui_print "- Android 13 Detected!!";
else
 abort "- ANDROID VERSION CAN'T BE DETECTED!!!. Aborting..."
fi;
# Unmount System
mount -o ro,remount -t auto /system;

write_boot; # use flash_boot to skip ramdisk repack, e.g. for devices with init_boot ramdisk
## end boot install