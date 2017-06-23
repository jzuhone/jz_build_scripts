#!/bin/bash

ACCOUNT="$1"
SOFT="$2"
VERSION="$3"

echo $PWD

wget https://github.com/$ACCOUNT/$SOFT/archive/v$VERSION.tar.gz
tar -zxvf v$VERSION

cd $SOFT-$VERSION

/opt/python/cp27-cp27m/bin/pip install numpy==1.11.3 cython
/opt/python/cp27-cp27mu/bin/pip install numpy==1.11.3 cython
/opt/python/cp35-cp35m/bin/pip install numpy==1.11.3 cython
/opt/python/cp36-cp36m/bin/pip install numpy==1.11.3 cython
/opt/python/cp36-cp36m/bin/pip install twine

/opt/python/cp27-cp27m/bin/python setup.py bdist_wheel
rm -rf build
/opt/python/cp27-cp27mu/bin/python setup.py bdist_wheel
rm -rf build
/opt/python/cp35-cp35m/bin/python setup.py bdist_wheel
rm -rf build
/opt/python/cp36-cp36m/bin/python setup.py bdist_wheel

mv dist/$SOFT-$VERSION-cp27-cp27m-linux_x86_64.whl dist/$SOFT-$VERSION-cp27-cp27m-manylinux1_x86_64.whl
mv dist/$SOFT-$VERSION-cp27-cp27mu-linux_x86_64.whl dist/$SOFT-$VERSION-cp27-cp27mu-manylinux1_x86_64.whl
mv dist/$SOFT-$VERSION-cp35-cp35m-linux_x86_64.whl dist/$SOFT-$VERSION-cp35-cp35m-manylinux1_x86_64.whl
mv dist/$SOFT-$VERSION-cp36-cp36m-linux_x86_64.whl dist/$SOFT-$VERSION-cp36-cp36m-manylinux1_x86_64.whl

mv dist/*.whl /wheels