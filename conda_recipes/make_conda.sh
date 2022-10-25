#!/bin/zsh

ACCOUNT="jzuhone"
SOFT="pyxsim"

export MACOSX_DEPLOYMENT_TARGET="10.9"

conda build ${SOFT} --python 3.8 --numpy 1.19 -c astropy -c jzuhone
conda build ${SOFT} --python 3.9 --numpy 1.21 -c astropy -c jzuhone
conda build ${SOFT} --python 3.10 --numpy 1.21 -c astropy -c jzuhone
