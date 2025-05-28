#!/usr/bin/env python3

import os
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np

benchmarks = open("benchmarks.txt").read().splitlines()



results = {}

for benchmark in benchmarks:
    df = pd.read_csv(f"{benchmark}.rc0.csv")
    results[benchmark] = df


def make_absolute_time():
    plt.figure(figsize=(12, 6))  # 增加图表宽度

    x = np.arange(len(results))
    width = 0.11  # 减小柱子宽度
    gap = 0.03

    # 定义两种颜色
    colors = ['#1f77b4', '#ff7f0e', '#2ca02c']  # simp, opt, nosimp

    for i, benchmark in enumerate(benchmarks):
        print(results[benchmark])
        labels_id = {
            'simp': 0,
            'opt': 1,
            'nosimp': 2,
        }
        labels_order = ['nosimp', 'simp', 'opt']
        pos = [x[i] + (gap + width) * (n - (len(labels_order) - 1) / 2) for n in range(len(labels_order))]

        for j, lbl in enumerate(labels_order):
            id = labels_id[lbl]
            plt.bar(pos[j], results[benchmark]["mean"].iloc[id], width, 
                    color=colors[j], edgecolor='black', 
                    label=lbl if i == 1 else "")
            plt.errorbar(pos[j], results[benchmark]["mean"].iloc[id], 
                        yerr=results[benchmark]["stddev"].iloc[id], color='black', capsize=3)

    # 设置 x 轴标签
    plt.xticks(x, benchmarks, rotation=45)

    plt.xlabel("Benchmark")
    plt.ylabel("Time (s)")
    plt.title("Benchmark Performance with Standard Deviation")
    plt.legend()

    plt.tight_layout()

    plt.savefig("benchmark-results.png", bbox_inches='tight')
    plt.close()

make_absolute_time()