#!/bin/bash

cp common/* work
cp network/* work
pushd $PWD
cd work
. env-vars
terraform init
terraform apply
popd
