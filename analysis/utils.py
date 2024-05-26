from decimal import Decimal


def avg_current(filename):
  sum = Decimal(0.0)
  count = 0

  with open(filename, 'rt') as f:
    for line in f:
      t, current = [Decimal(s) for s in line.split()]
      sum += current
      count += 1

  if count == 0:
    return None

  return sum / Decimal(count)


def find_max_frequency(filename):
  greatest_freq = None
  greatest_mag = Decimal(0.0)

  with open(filename, 'rt') as f:
    for line in f:
      freq, mag = [Decimal(s) for s in line.split()]
      if freq > 1.0 and mag > greatest_mag:
        greatest_freq = freq
        greatest_mag = mag

  return greatest_freq
