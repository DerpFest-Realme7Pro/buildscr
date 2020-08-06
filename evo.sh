# Init
if ! [ "${init}" = "l" ]; then
    if ! [ "${init}" = "h" ]; then
        init=""
    fi
fi

if [[ "${init}" == "" ]]; then
    echo -n "gitlab or github?[l/h]: "
    read init
fi

if [[ "${init}" == "l" ]]; then
    repo init -u https://gitlab.com/EvoX/manifest -b ten
elif [[ "${init}" == "h" ]]; then
    repo init -u https://github.com/Evolution-X/manifest -b ten
else
    echo "You were supposed to l/h"
    echo "Rerunning the script"
    sleep 2
    . buildscr/evo.sh
fi

# Sync
repo sync --current-branch --no-tags --no-clone-bundle --optimized-fetch --force-sync -j$(nproc --all) --quiet

# system/qcom
if [ -e system/qcom ]; then
   echo "system/qcom exists"
else
   git clone https://github.com/ArrowOS/android_system_qcom -b arrow-10.0 system/qcom
fi
