# DerpFest
============

## Build-Script
-------------

#### Run the following command to sync all files for DerpFest

```bash
git clone https://github.com/derpfest-sanders/build-scripts.git -b master build-scripts && cd build-scripts
```

```bash
. build-scripts/derpscript.sh
```


#### Now run the following command to start build

```bash
. build/envsetup.sh && lunch aosip_sanders-userdebug && mka kronic -jX
```

*** X= value of cores you want
