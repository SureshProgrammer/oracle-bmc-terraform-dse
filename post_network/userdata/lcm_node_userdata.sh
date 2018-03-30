#!/usr/bin/env bash

cd ~opc

release="vcn_peering"
curl https://raw.githubusercontent.com/DSPN/oracle-bmc-terraform-dse/$release/userdata/lcm_node.sh > lcm_node.sh

chmod +x lcm_node.sh

