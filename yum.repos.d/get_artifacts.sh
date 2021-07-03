#!/bin/bash -e
# Basic script to grab artifacts I want to keep locally.

artifacts_dir=./artifacts

artifacts=(
    https://download.docker.com/linux/static/stable/x86_64/docker-19.03.9.tgz
)

mkdir -p ${artifacts_dir}
pushd ${artifacts_dir}

for item in ${artifacts[*]}; do
    curl -O -L ${item}
done

popd
