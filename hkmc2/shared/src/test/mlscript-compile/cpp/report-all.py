#!/usr/bin/env python3

import os
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np

benchmarks = open("benchmarks.txt").read().splitlines()

results = {}
size_results = {}

for benchmark in benchmarks:
    print(benchmark)
    df = pd.read_csv(f"{benchmark}.csv")
    results[benchmark] = df
    df = pd.read_csv(f"{benchmark}.size.csv")
    size_results[benchmark] = df

def make_absolute_time():
    plt.figure(figsize=(15, 8), dpi=600)  # 增加图表宽度

    x = np.arange(len(results))
    width = 0.18  # 减小柱子宽度
    gap = 0.03

    # 定义两种颜色
    colors = ['#1f77b4', '#ff7f0e', '#2ca02c']  # simp, opt, nosimp

    for i, benchmark in enumerate(benchmarks):
        print(results[benchmark])
        labels_id = {
            'simp': 0,
            'opt': 1,
        }
        labels_order = ['simp', 'opt']
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

    plt.xlabel("Benchmarks")
    plt.ylabel("Running Time (s)")
    
    plt.legend()

    plt.tight_layout()

    plt.savefig("benchmark-results.png", bbox_inches='tight')
    plt.close()

def make_relative_time():
    plt.figure(figsize=(15, 8), dpi=600)  # 增加图表宽度

    x = np.arange(len(results))
    width = 0.18  # 减小柱子宽度
    gap = 0.03

    # 定义两种颜色
    colors = ['#1f77b4', '#ff7f0e', '#2ca02c']  # simp, opt, nosimp

    for i, benchmark in enumerate(benchmarks):
        
        labels_id = {
            'simp': 0,
            'opt': 1,
        }
        labels_order = ['simp', 'opt']

        baseline = results[benchmark]["mean"].iloc[labels_id['opt']]
        pos = [x[i] + (gap + width) * (n - (len(labels_order) - 1) / 2) for n in range(len(labels_order))]

        for j, lbl in enumerate(labels_order):
            id = labels_id[lbl]
            relative_time = results[benchmark]["mean"].iloc[id] / baseline
            
            plt.bar(pos[j], relative_time, width, 
                    color=colors[j], edgecolor='black', 
                    label=lbl if i == 0 else "")
            
            # 添加数值标签
            plt.text(pos[j], relative_time * 1.05, 
                    f'{relative_time:.2f}', 
                    ha='center', va='bottom', 
                    rotation=0, fontsize=8)

    # 设置 x 轴标签
    plt.xticks(x, benchmarks, rotation=45)

    plt.xlabel("Benchmarks")
    plt.ylabel("Relative Running Time (normalized to opt, log scale)")
    plt.legend()

    # 设置对数坐标轴
    plt.yscale('log')
    
    # 自定义 y 轴标签格式
    from matplotlib.ticker import ScalarFormatter
    formatter = ScalarFormatter(useMathText=True)
    formatter.set_scientific(False)
    plt.gca().yaxis.set_major_formatter(formatter)
    
    # 设置 y 轴范围，确保 1.0 在中间位置
    plt.ylim(0.2, 5)

    # 添加水平参考线
    plt.axhline(y=1.0, color='gray', linestyle='--', alpha=0.5)

    plt.tight_layout()

    plt.savefig("benchmark-relative-results.png", bbox_inches='tight')
    plt.close()

def make_size():
    plt.figure(figsize=(15, 8), dpi=600)  # 增加图表宽度

    x = np.arange(len(results))
    width = 0.18  # 减小柱子宽度
    gap = 0.03

    # 定义两种颜色
    colors = ['#1f77b4', '#ff7f0e', '#2ca02c']  # simp, opt, nosimp

    for i, benchmark in enumerate(benchmarks):
        labels_id = {
            'simp': 0,
            'opt': 1,
        }
        labels_order = ['simp', 'opt']
        pos = [x[i] + (gap + width) * (n - (len(labels_order) - 1) / 2) for n in range(len(labels_order))]

        for j, lbl in enumerate(labels_order):
            id = labels_id[lbl]
            size_kb = size_results[benchmark]["size"].iloc[id] / 1000
            plt.bar(pos[j], size_kb, width, 
                    color=colors[j], edgecolor='black', 
                    label=lbl if i == 0 else "")
            
            # 添加数值标签
            plt.text(pos[j], size_kb * 1.05, 
                    f'{size_kb:.1f}', 
                    ha='center', va='bottom', 
                    rotation=0, fontsize=8)

    # 设置 x 轴标签
    plt.xticks(x, benchmarks, rotation=45)

    plt.xlabel("Benchmarks")
    plt.ylabel("Code Size (kB)")
    plt.legend()

    plt.ylim(0, 190)  # 调整 y 轴范围到 kB 单位

    plt.tight_layout()

    plt.savefig("benchmark-size-results.png", bbox_inches='tight')
    plt.close()

def make_relative_size():
    plt.figure(figsize=(15, 8), dpi=600)  # 增加图表宽度

    x = np.arange(len(results))
    width = 0.18  # 减小柱子宽度
    gap = 0.03

    # 定义两种颜色
    colors = ['#1f77b4', '#ff7f0e', '#2ca02c']  # simp, opt, nosimp

    for i, benchmark in enumerate(benchmarks):
        labels_id = {
            'simp': 0,
            'opt': 1,
        }
        labels_order = ['simp', 'opt']

        baseline = size_results[benchmark]["size"].iloc[labels_id['simp']]
        pos = [x[i] + (gap + width) * (n - (len(labels_order) - 1) / 2) for n in range(len(labels_order))]

        for j, lbl in enumerate(labels_order):
            id = labels_id[lbl]
            relative_size = size_results[benchmark]["size"].iloc[id] / baseline
            
            plt.bar(pos[j], relative_size, width, 
                    color=colors[j], edgecolor='black', 
                    label=lbl if i == 0 else "")
            
            # 添加数值标签
            plt.text(pos[j], relative_size * 1.05, 
                    f'{relative_size:.2f}', 
                    ha='center', va='bottom', 
                    rotation=0, fontsize=8)

    # 设置 x 轴标签
    plt.xticks(x, benchmarks, rotation=45)

    plt.xlabel("Benchmarks")
    plt.ylabel("Relative Code Size (normalized to simp)")
    plt.legend()

    plt.ylim(0, 1.6)

    # 添加水平参考线
    plt.axhline(y=1.0, color='gray', linestyle='--', alpha=0.5)

    plt.tight_layout()

    plt.savefig("benchmark-relative-size-results.png", bbox_inches='tight')
    plt.close()

make_absolute_time()
make_relative_time()
make_size()
make_relative_size()
