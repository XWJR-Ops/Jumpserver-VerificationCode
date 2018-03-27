#!/bin/sh
#
#author: xwjr.com


trap '' SIGINT
base_dir=$(dirname $0)

export LANG='zh_CN.UTF-8'

TIME=`date +%H:%M`
python /app/jumpserver/NewLogin.py $USER $TIME >> /dev/null 2>&1 &

python $base_dir/NewConnect.py $USER $TIME


exit
