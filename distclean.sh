#!/bin/sh
#
# Remove Packages directory and generated files
#
. ./config.sh
./clean.sh
exec rm -rf Package.pins Packages Sources/${Mod}/*-*.swift Sources/${Mod}/${Module}.swift Sources/${Mod}/Swift${Mod}.swift ${Mod}.xcodeproj
