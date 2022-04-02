#!/bin/bash

work_dir=${0%/*}

if [ ! -d $work_dir/backups ]; then
	mkdir $work_dir/backups
fi

cd $work_dir && nohup sudo python3 -m http.server 80 --directory backups &
