#!/usr/bin/env python3

import argparse
from decimal import Decimal
import sys
from utils import avg_current


def main():
  parser = argparse.ArgumentParser()
  parser.add_argument('filename')
  args = parser.parse_args()

  avg = avg_current(args.filename)

  if not avg:
    sys.exit(1)

  print(f'{avg:f}')

if __name__ == '__main__':
  main()
