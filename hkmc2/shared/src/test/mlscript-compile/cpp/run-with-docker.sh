#!/usr/bin/env sh

mkdir -p ./results

docker run -v $(pwd)/results:/app/results waterlens/mlsopt:20250528