#!/bin/bash

ACCOUNT="$1"
SOFT="$2"
VERSION="$3"

export MACOSX_DEPLOYMENT_TARGET="10.9"

conda build ${SOFT}-stable --python 2.7 --numpy 1.13 -c astropy
conda build ${SOFT}-stable --python 3.5 --numpy 1.13 -c astropy
conda build ${SOFT}-stable --python 3.6 --numpy 1.13 -c astropy