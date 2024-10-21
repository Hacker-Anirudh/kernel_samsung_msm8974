# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=* Thunderstorm-Kernel
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=ks01lte
supported.versions=
supported.patchlevels=
'; } # end properties

# shell variables
block=/dev/block/platform/msm_sdcc.1/by-name/boot;
is_slot_device=auto;
ramdisk_compression=auto;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

## AnyKernel install
dump_boot;

# begin ramdisk changes
# end ramdisk changes

write_boot;
## end install

