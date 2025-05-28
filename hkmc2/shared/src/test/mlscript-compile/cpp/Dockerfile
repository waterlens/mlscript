FROM --platform=linux/arm64 ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    curl \
    build-essential \
    libmimalloc-dev \
    libgmp-dev \
    libboost-stacktrace-dev \
    clang \
    && rm -rf /var/lib/apt/lists/*

RUN curl -L -o hyperfine_1.19.0_arm64.deb https://github.com/sharkdp/hyperfine/releases/download/v1.19.0/hyperfine_1.19.0_arm64.deb && dpkg -i hyperfine_1.19.0_arm64.deb

RUN curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH="/root/.local/bin:${PATH}"

RUN curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh | bash -s -- --to /usr/local/bin

WORKDIR /app

COPY Makefile justfile mlsprelude.h mlsaux.cxx bench-all.py report-all.py pack.py benchmarks.txt pyproject.toml .python-version uv.lock ./

COPY *.simp.cxx *.opt.cxx ./

RUN mkdir -p /app/results

VOLUME ["/app/results"]

COPY <<EOF /app/entrypoint.sh
#!/bin/bash
uv run ./bench-all.py && uv run ./report-all.py
cp *.png /app/results/
EOF

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
