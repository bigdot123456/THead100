#!/bin/bash

CASE=./case/timer/timer_test.c

mkdir -p workdir
export TOOL_PATH=/eda/riscv/toolchain

# ./tools/run_case --sim_tool iverilog ./case/timer/timer_test.c
# ../tools/run_case --sim_tool iverilog ../case/timer/timer_test.c
./tools/run_case $CASE
