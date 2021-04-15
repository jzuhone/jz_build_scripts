#!/bin/zsh

ACCOUNT="jzuhone"
SOFT="pyxsim"
VERSION="2.3.1"

PYTHON_ROOT="/Library/Frameworks/Python.framework/Versions/"

wget https://github.com/$ACCOUNT/$SOFT/archive/refs/tags/$VERSION.tar.gz
tar -zxvf $VERSION.tar.gz

source ~/.zshrc

cd $SOFT-$VERSION


$PYTHON_ROOT/3.7/bin/python3 setup.py bdist_wheel
rm -rf build

$PYTHON_ROOT/3.8/bin/python3 setup.py bdist_wheel
rm -rf build

$PYTHON_ROOT/3.9/bin/python3 setup.py bdist_wheel
rm -rf build

python setup.py sdist

#python ../rename_wheels.py dist/${SOFT}-${VERSION}-cp36-cp36m-macosx_10_6_intel.whl
#python ../rename_wheels.py dist/${SOFT}-${VERSION}-cp37-cp37m-macosx_10_6_inte#l.whl
#python ../rename_wheels.py dist/${SOFT}-${VERSION}-cp38-cp38m-macosx_10_6_intel.whl

#cd ..

#mv $SOFT-$VERSION/dist/* .

#rm -rf $SOFT-$VERSION
