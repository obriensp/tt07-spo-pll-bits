#!/usr/bin/env python3

import argparse
from decimal import Decimal
import sys
from utils import find_max_frequency


def main():
  parser = argparse.ArgumentParser()
  parser.add_argument('filename')
  args = parser.parse_args()

  greatest_freq = find_max_frequency(args.filename)

  if not greatest_freq:
    sys.exit(1)

  print(f'{greatest_freq:f}')

if __name__ == '__main__':
  main()
