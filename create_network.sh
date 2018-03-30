#!/bin/bash

cp common/* work
cp network/* work
pushd $PWD
cd work
. env_vars
terraform init
terraform apply
popd
