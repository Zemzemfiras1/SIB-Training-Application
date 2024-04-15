#!/bin/bash
var_dir=workdir/variants


bcftools call -mv -Ob -o $var_dir/variantscalls.bcf $var_dir/SRR519926.pileup.bcf
