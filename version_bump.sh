#!/bin/sh

[ $# -eq 0 ] && { echo "Usage: $0 <version>"; exit 1; }

sed -i "s/%define _version.*/%define _version $1/" rpmbuild/qcma-fedora.spec
sed -i "s/%define _version.*/%define _version $1/" rpmbuild/qcma-opensuse.spec
sed -i "s/VERSION = .*/VERSION = $1/"     qcma_common.pri
echo "Don't forget to update the changelog"
