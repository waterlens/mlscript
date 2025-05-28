#!/usr/bin/env python3

import os
import shutil
import tarfile
from pathlib import Path

# 读取基准测试文件列表
benchmarks = open("benchmarks.txt").read().splitlines()

# 创建临时目录
os.makedirs("mlsbench", exist_ok=True)

# 复制必要的文件
essential_files = [
    "Makefile",
    "justfile",
    "mlsprelude.h",
    "mlsaux.cxx",
    "bench-all.py",
    "report-all.py",
    "pack.py",
    "benchmarks.txt",
    "pyproject.toml",
    ".python-version",
    "uv.lock"
]

for file in essential_files:
    if os.path.exists(file):
        shutil.copy2(file, f"mlsbench/{file}")

for benchmark in benchmarks:
    for suffix in [".simp.cxx", ".opt.cxx"]:
        file = f"{benchmark}{suffix}"
        if os.path.exists(file):
            shutil.copy2(file, f"mlsbench/{file}")

with tarfile.open("mlsbench.tar.gz", "w:gz") as tar:
    tar.add("mlsbench")

shutil.rmtree("mlsbench")

print("mlsbench.tar.gz")

