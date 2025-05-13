#!/usr/bin/env python3

import os

benchmarks = [
    "atom", # only list and lazy list
    "awards", # only sorting on lists
    "constraints", # too many HoFs
    "gcd",
    "scc", # no optimizations
    "secretary", # only sorting on lists
]

for benchmark in benchmarks:
    os.system(f"just bench {benchmark}")
