#!/bin/zsh

ACCOUNT="jzuhone"
SOFT="soxs"

export MACOSX_DEPLOYMENT_TARGET="10.9"

conda build ${SOFT} --python 3.8 --numpy 1.19 -c astropy -c jzuhone --no-anaconda-upload
conda build ${SOFT} --python 3.9 --numpy 1.20 -c astropy -c jzuhone --no-anaconda-upload
conda build ${SOFT} --python 3.10 --numpy 1.21 -c astropy -c jzuhone --no-anaconda-upload
