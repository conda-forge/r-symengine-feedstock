#!/bin/bash
sed -i.bak "s/CRCPBasic basic_struct/CRCPBasic_C basic_struct/g" $PREFIX/include/symengine/cwrapper.h
set -o errexit -o pipefail
export DISABLE_AUTOBREW=1
export SymEngine_DIR=$PREFIX
${R} CMD INSTALL --build .
