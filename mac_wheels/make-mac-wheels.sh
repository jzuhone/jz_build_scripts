#!/bin/bash

ACCOUNT="$1"
SOFT="$2"
VERSION="$3"

wget https://github.com/$ACCOUNT/$SOFT/archive/v$VERSION.tar.gz
tar -zxvf v$VERSION

cd $SOFT-$VERSION

macpython27
python2 setup.py bdist_wheel
rm -rf build

macpython35
python3 setup.py bdist_wheel
rm -rf build

macpython36
python3 setup.py bdist_wheel
rm -rf build

python ./rename_wheels.py dist/${SOFT}-${VERSION}-cp27-none-macosx_10_6_intel.whl
python ./rename_wheels.py dist/${SOFT}-${VERSION}-cp35-cp35m-macosx_10_6_intel.whl
python ./rename_wheels.py dist/${SOFT}-${VERSION}-cp36-cp36m-macosx_10_6_intel.whl

cd ..

mv $SOFT-$VERSION/dist/* .

rm -rf $SOFT-$VERSION