#!/usr/bin/env bash
set -euo pipefail

source /g/data/gv90/da1339/spack/0.22/spack/share/spack/setup-env.sh
spack env activate -p /g/data/gv90/da1339/spack/0.22/environments/om3_cice6_dev
spack load access-om3

echo "=== runtime sanity ==="
echo "which access-om3-MOM6-CICE6: $(command -v access-om3-MOM6-CICE6 || true)"
echo "ldd of exe:"
ldd "$(command -v access-om3-MOM6-CICE6)" | head -n 50 || true

