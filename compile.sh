#!/bin/bash
# ProgramBench-style build: must produce ./executable at the repo root.
set -e
cd "$(dirname "$0")"
# LuaJIT's Makefile requires MACOSX_DEPLOYMENT_TARGET to be exported on macOS.
export MACOSX_DEPLOYMENT_TARGET="$(sw_vers -productVersion | cut -d. -f1).0"
make
cp src/luajit executable
