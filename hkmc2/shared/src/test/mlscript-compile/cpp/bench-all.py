#!/usr/bin/env python3

import os

benchmarks = [
    "atom", # only list and lazy list
    "awards", # only sorting on lists
    "gcd",
    "scc", # no optimizations
    "secretary", # only sorting on lists
    "cse",
    "deriv",
    "arith_eval",
    "rbmap",
    "const_fold",
]

for benchmark in benchmarks:
    os.system(f"just bench {benchmark}")
