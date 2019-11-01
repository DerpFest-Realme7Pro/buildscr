rm -rf device/motorola/sanders
rm -rf kernel/motorola/msm8953
rm -rf vendor/motorola/sanders
git clone https://github.com/ronaxdevil/vendor_motorola_sanders.git -b ten vendor/motorola/sanders
git clone https://github.com/ronaxdevil/mayhem-kernel.git -b ten kernel/motorola/msm8953
git clone https://github.com/marshmello61/tann.git -b d10 device/motorola/sanders
