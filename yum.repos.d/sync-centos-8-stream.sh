#!/bin/bash

mkdir -p centos/8-stream/AppStream/x86_64/os
rsync -avHSP mirrors.rit.edu::centos/8-stream/AppStream/x86_64/os/ centos/8-stream/AppStream/x86_64/os/

mkdir -p centos/8-stream/BaseOS/x86_64/os
rsync -avHSP mirrors.rit.edu::centos/8-stream/BaseOS/x86_64/os/ centos/8-stream/BaseOS/x86_64/os/

mkdir -p centos/8-stream/extras/x86_64/os/
rsync -avHSP mirrors.rit.edu::centos/8-stream/extras/x86_64/os/ centos/8-stream/extras/x86_64/os/

mkdir -p centos/8-stream/PowerTools/x86_64/os
rsync -avHSP mirrors.rit.edu::centos/8-stream/PowerTools/x86_64/os/ centos/8-stream/PowerTools/x86_64/os/

mkdir -p epel/8/Everything/x86_64/Packages
rsync -avHSP mirrors.rit.edu::epel/8/Everything/x86_64/Packages/ epel/8/Everything/x86_64/Packages/

mkdir -p epel/8/Everything/x86_64/repodata
rsync -avHSP mirrors.rit.edu::epel/8/Everything/x86_64/repodata/ epel/8/Everything/x86_64/repodata/
