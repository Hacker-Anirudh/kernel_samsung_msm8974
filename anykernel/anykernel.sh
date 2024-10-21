### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers
# Modified by Jprimero15 @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=Thunderstorm-Kernel For Android 9/10/11/12/13
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=ks01lte
device.name2=ks01ltexx
device.name3=GT-I9506
supported.versions=9 - 13
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties

### AnyKernel install

# boot shell variables
BLOCK=/dev/block/platform/msm_sdcc.1/by-name/boot;
IS_SLOT_DEVICE=0;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

# boot install
dump_boot; # use split_boot to skip ramdisk unpack, e.g. for devices with init_boot ramdisk
write_boot; # use flash_boot to skip ramdisk repack, e.g. for devices with init_boot ramdisk
## end boot install