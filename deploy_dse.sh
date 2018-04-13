#!/bin/bash

cp -r compute/* work
pushd $PWD
cd work
terraform init
terraform apply
popd

