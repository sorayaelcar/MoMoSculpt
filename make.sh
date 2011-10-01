#!/bin/bash
# This script builds the addon zip package for Blender 2.5
cd addons/momosculpt
VERSION=`python -c "from __init__ import bl_info; print '.'.join([str(n) for n in bl_info['version']])"`
rm ../../momosculpt-$VERSION.zip
zip -r ../../momosculpt-$VERSION.zip ./
echo "Wrote zip package to momosculpt-$VERSION.zip"
