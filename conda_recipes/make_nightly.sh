#!/bin/zsh

ACCOUNT="jzuhone"
SOFT="yt"

export MACOSX_DEPLOYMENT_TARGET="10.9"

conda build ${SOFT}-nightly --python 3.6 --numpy 1.15 -c astropy
conda build ${SOFT}-nightly --python 3.7 --numpy 1.16 -c astropy
conda build ${SOFT}-nightly --python 3.8 --numpy 1.18 -c astropy
