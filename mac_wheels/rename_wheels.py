#!/usr/bin/env python
""" Rename MacPython wheels for system python and homebrew """
from __future__ import print_function

import os
from os.path import expanduser, splitext
import sys
from wheel.install import WheelFile

POP_PLAT_TAG = 'macosx_10_6_intel'
SYS_PLAT_TAG = 'macosx_10_9_intel'
BREW_PLAT_TAG = 'macosx_10_9_x86_64'

def main():
    paths = sys.argv[1:]
    for path in paths:
        path = expanduser(path)
        whl_obj = WheelFile(path)
        tags = list(whl_obj.tags)
        plat_tags = [plat for pyver, abi, plat in tags]
        if plat_tags == [POP_PLAT_TAG]:
            fore, aft = splitext(path)
            new_path = '{0}.{1}.{2}{3}'.format(
                fore, SYS_PLAT_TAG, BREW_PLAT_TAG, aft)
            os.rename(path, new_path)


if __name__ == '__main__':
    main()