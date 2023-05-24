#!/bin/bash

#-- This script needs to be source-d in the terminal, e.g.
#   source ./setup.lockhart.cce.sh

module purge
module load PrgEnv-gnu
module load craype-x86-milan
module load amd/5.3.0
module load craype-accel-amd-gfx908
export MPICH_GPU_SUPPORT_ENABLED=1

#-- GPU-aware MPI
export MPICH_GPU_SUPPORT_ENABLED=1

export LD_LIBRARY_PATH=${CRAY_LD_LIBRARY_PATH}:${LD_LIBRARY_PATH}

export CHOLLA_ENVSET=1
