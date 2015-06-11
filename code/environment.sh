#!/bin/bash
[[ "${BASH_SOURCE[0]}" == "${0}" ]] && echo "Please source this script instead of executing it..." && exit

echo "Setting up..."
dir=$(readlink -f $(dirname ${BASH_SOURCE[0]}))

export LB_MEM="3G"
export LB_MEM_NOWARN=1
export LB_PAGER_FORCE_START=1
export LOGICBLOX_HOME=${dir}/logicblox-3.10.14
export PATH=${dir}/bin:$LOGICBLOX_HOME/bin:$PATH

export DOOP_EXTERNALS=${dir}/benchmarks/JREs
