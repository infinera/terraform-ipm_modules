#!/bin/bash
cmd=`echo "$1" | awk -F"/" '{print $NF}'`
arrIN=(${cmd//./ })
command=${arrIN[0]}
echo $command
len=${#command}-4
resource="${command:4:${len}}"
echo $resource
tmp_directory=/tmp/${command}$RANDOM
echo "temp directory: ${tmp_directory}"
. $IPM_CMDS/gen_get_main.sh $tmp_directory $resource "${2} = var.${2}"
. $IPM_CMDS/gen_get_variables.sh $tmp_directory $resource "variable ${2} { type = string }"
cd $tmp_directory
. $IPM_CMDS/get_entities.sh $command id "${@:3:$#}"
rm -rf $tmp_directory