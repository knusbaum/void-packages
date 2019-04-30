#!/bin/bash

set -e

pkgs=$(rg kbuild=true srcpkgs | sed -e 's|srcpkgs/\([^\]*\)/.*|\1|')

for pkg in $pkgs; do
    xrevbump 'Bump for new deps' $pkg
done
