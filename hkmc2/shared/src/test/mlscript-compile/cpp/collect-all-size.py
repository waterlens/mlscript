#!/usr/bin/env python3

import os
import subprocess
import csv
import sys

def get_file_size(file_path):
    result = subprocess.run(['stat', '-f', '%z', file_path], capture_output=True, text=True)
    return int(result.stdout.strip())

def strip_file(file_path):
    subprocess.run(['strip', file_path])

def main(target):
    simp_file = f'{target}.simp.out'
    opt_file = f'{target}.opt.out'
    results = []
    
    for file in [simp_file, opt_file]:
        if os.path.exists(file):
            # First strip the file
            strip_file(file)
            # Get file size
            size = get_file_size(file)
            # Add to results list
            results.append({
                'command': f'./{file}',
                'size': size
            })
    
    # Write to CSV file with target prefix
    output_file = f'{target}.size.csv'
    with open(output_file, 'w', newline='') as f:
        writer = csv.DictWriter(f, fieldnames=['command', 'size'])
        writer.writeheader()
        writer.writerows(results)

benchmarks = open("benchmarks.txt").read().splitlines()

for benchmark in benchmarks:
    main(benchmark)