#!/bin/bash
if [ $# -lt 1 ]; then
    echo "usage: $0 dist-path"
    echo "eg: $0 dist-GKE"
    echo "for a list of distributions look inside the 'dist' dir"
    exit 1
fi

cp -var kubescape $1 || exit 1
cd $1
sudo docker build . --tag kubescape-$(basename $PWD | tr '[:upper:]' '[:lower:]')