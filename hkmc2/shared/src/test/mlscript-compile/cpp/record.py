#!/usr/bin/env python3

import os
import shutil
import tarfile
from pathlib import Path
from datetime import datetime

# 读取基准测试文件列表
benchmarks = open("benchmarks.txt").read().splitlines()

# 创建临时目录
os.makedirs("mlsbench_record", exist_ok=True)

# 复制必要的文件
essential_files = [
    "Makefile",
    "justfile",
    "mlsprelude.h",
    "mlsaux.cxx",
    "bench-all.py",
    "report-all.py",
    "collect-all-size.py",
    "pack.py",
    "benchmarks.txt",
    "pyproject.toml",
    ".python-version",
    "uv.lock"
]

for file in essential_files:
    if os.path.exists(file):
        shutil.copy2(file, f"mlsbench_record/{file}")

for benchmark in benchmarks:
    for suffix in [".simp.cxx", ".opt.cxx", ".size.csv", ".csv"]:
        file = f"{benchmark}{suffix}"
        if os.path.exists(file):
            shutil.copy2(file, f"mlsbench_record/{file}")

with tarfile.open(f"mlsbench_record_{datetime.now().strftime('%Y%m%d_%H%M%S')}.tar.gz", "w:gz") as tar:
    tar.add("mlsbench_record")

shutil.rmtree("mlsbench_record")

print("mlsbench_record.tar.gz")

