#!/bin/bash

mkdir -p fedora/releases/32/Everything/x86_64/os/
rsync -avHSP mirrors.rit.edu::fedora/releases/32/Everything/x86_64/os/ fedora/releases/32/Everything/x86_64/os/

mkdir -p fedora/updates/32/Everything/x86_64/Packages
rsync -avHSP mirrors.rit.edu::fedora/updates/32/Everything/x86_64/Packages/ fedora/updates/32/Everything/x86_64/Packages/

mkdir -p fedora/updates/32/Everything/x86_64/repodata
rsync -avHSP mirrors.rit.edu::fedora/updates/32/Everything/x86_64/repodata/ fedora/updates/32/Everything/x86_64/repodata/
