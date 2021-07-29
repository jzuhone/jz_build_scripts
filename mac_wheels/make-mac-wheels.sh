#!/bin/zsh

#ACCOUNT="lynx-x-ray-observatory"
ACCOUNT="jzuhone"
SOFT="pyxsim"
VERSION="3.0.0"

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

cd ..

mv $SOFT-$VERSION/dist/* .

rm -rf $SOFT-$VERSION
