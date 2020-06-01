#!/bin/bash -e
# Basic script to grab artifacts I want to keep locally.

artifacts_dir=./artifacts

artifacts=(
    https://github.com/containerd/containerd/releases/download/v1.3.4/containerd-1.3.4.linux-amd64.tar.gz
    https://github.com/kubernetes-sigs/cri-tools/releases/download/v1.18.0/crictl-v1.18.0-linux-amd64.tar.gz
)

mkdir -p ${artifacts_dir}
pushd ${artifacts_dir}

for item in ${artifacts[*]}; do
    curl -O -L ${item}
done

popd
