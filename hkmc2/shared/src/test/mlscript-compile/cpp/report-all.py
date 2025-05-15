#!/usr/bin/env python3

import os
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np

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

plt.figure(figsize=(10, 6))

results = {}

for benchmark in benchmarks:
    df = pd.read_csv(f"{benchmark}.csv")
    results[benchmark] = df

x = np.arange(len(results))
width = 0.3

# 定义两种颜色
colors = ['#1f77b4', '#ff7f0e']  # 蓝色和橙色

for i, benchmark in enumerate(benchmarks):
    print(results[benchmark])
    plt.bar(x[i] - width/2, results[benchmark]["mean"].iloc[0], width, color=colors[0], label='simp' if i == 0 else "")
    plt.bar(x[i] + width/2, results[benchmark]["mean"].iloc[1], width, color=colors[1], label='opt' if i == 0 else "")

# 设置 x 轴标签
plt.xticks(x, benchmarks, rotation=45)

plt.xlabel("Benchmark")
plt.ylabel("Time (s)")
plt.title("Benchmark Performance")
plt.legend()

plt.tight_layout()

plt.savefig("bench-all.png", bbox_inches='tight')
plt.close()


