#!/bin/zsh

ACCOUNT="lynx-x-ray-observatory"
SOFT="soxs"
VERSION="2.3.0"

export MACOSX_DEPLOYMENT_TARGET="10.9"

conda build ${SOFT}-stable --python 3.6 --numpy 1.15 -c astropy
conda build ${SOFT}-stable --python 3.7 --numpy 1.16 -c astropy
conda build ${SOFT}-stable --python 3.8 --numpy 1.18 -c astropy