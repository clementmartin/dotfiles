#!/usr/bin/env python
# Copyright (c) Onespan Inc. All rights reserved.
# Unauthorized copying of this file, via any medium is strictly prohibited
#
# Authors:
# 2019 - FULL_NAME <EMAIL_PREFIX@EMAIL_DOMAIN>

"""A simple python script template.
   Document it here
"""

from __future__ import print_function
import os
import sys
import argparse


def main(arguments):

    parser = argparse.ArgumentParser(
        description=__doc__,
        formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument('infile', help="Input file", type=argparse.FileType('r'))
    parser.add_argument('-o', '--outfile', help="Output file",
                        default=sys.stdout, type=argparse.FileType('w'))

    args = parser.parse_args(arguments)

    print(args)

if __name__ == '__main__':
    sys.exit(main(sys.argv[1:]))
