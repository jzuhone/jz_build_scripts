#!/bin/zsh

ACCOUNT="jzuhone"
SOFT="soxs"
VERSION="3.0.0"

export MACOSX_DEPLOYMENT_TARGET="10.9"

conda build ${SOFT}-stable --python 3.7 --numpy 1.18 -c astropy -c jzuhone --no-anaconda-upload
conda build ${SOFT}-stable --python 3.8 --numpy 1.19 -c astropy -c jzuhone --no-anaconda-upload
conda build ${SOFT}-stable --python 3.9 --numpy 1.20 -c astropy -c jzuhone --no-anaconda-upload
#conda build ${SOFT}-stable --python 3.9 --numpy 1.19 -c astropy
