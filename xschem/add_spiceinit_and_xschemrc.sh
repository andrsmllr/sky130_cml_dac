#!/bin/sh
# Add xschemrc and .spiceinit files from SKY130 PDK.

if [ -z ${PDK_ROOT} ]; then
    echo "PDK_ROOT not defined, exiting"
    exit -1
fi

if [ -e "xschemrc" ]; then
    echo "./xschemrc exists, skip"
else
    ln -s ${PDK_ROOT}/sky130A/libs.tech/xschem/xschemrc ./xschemrc
fi

if [ -e ".spiceinit" ]; then
    echo "./.spiceinit exists, skip"
else
    ln -s ${PDK_ROOT}/sky130A/libs.tech/ngspice/spinit ./.spiceinit
fi
