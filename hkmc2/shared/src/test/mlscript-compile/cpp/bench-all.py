#!/usr/bin/env python3

import os

benchmarks = open("benchmarks.txt").read().splitlines()

for benchmark in benchmarks:
    os.system(f"just bench {benchmark}")