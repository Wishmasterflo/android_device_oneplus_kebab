## OrangeFox Recovery Project Oneplus 8t Changelog

R11.1 V4 14-Feb-2022
* Synced with latest OrangeFox R11.1 changes
* Added lemonkebab as TARGET_DEVICE_ALT
* Removed option to change the splash screen image (as this is not working correctly right now!)
* Adjusted some settings for OrangeFox

R11.1 V3 04-Feb-2022
* Synced with latest OrangeFox R11.1 changes
* Added Maintainer avatar picture
* Added some vars for Android 12
* Fixed screen specification settings

R11.1 V2 26-Jan-2022
* Changed device name from kebab to OnePlus8T
* Some small bug fixes

R11.1 V1 20-Jan-2022
* Initial release of OrangeFox Recovery for the Oneplus8T



# Device Tree for 8T (kebab) for TWRP
## Disclaimer - Unofficial TWRP!

## Adjusted to build OrangeFox recovery from this for the Oneplus 8t


## Setup repo tool
Setup repo tool from here https://source.android.com/setup/develop#installing-repo

## Compile

Sync TWRP manifest:

```
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-11

```

Make a directory named local_manifest under .repo, and create a new manifest file, for example local_manifests.xml
and then paste the following

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
<remote name="github"
	fetch="https://github.com/" />

<project path="device/oneplus/kebab"
	name="theincognito/android_device_oneplus_kebab"
	remote="github"
	revision="android-11" />
</manifest>
```
You might need to pick few patches from gerrit.twrp.me to get some stuff working.

Sync the sources with

```
repo sync -j$(nproc --all)
```

To build, execute these commands in order

```
. build/envsetup.sh; export ALLOW_MISSING_DEPENDENCIES=true; export LC_ALL=C; lunch twrp_kebab-eng; make -j$(nproc --all) adbd recoveryimage
```

To test it:

```
# To temporarily boot it
fastboot boot out/target/product/kebab/recovery.img 

# Since 8T has a separate recovery partition, you can flash the recovery with
fastboot flash recovery recovery.img
```

Kernel: https://github.com/LineageOS/android_kernel_oneplus_sm8250

##### Credits
- theincognito-inc for this TWRP device tree for the Oneplus 8t
- bigbiff for decryption
- Systemad for original tree
- CaptainThrowback for original tree
- mauronofrio for original tree
- TWRP team
