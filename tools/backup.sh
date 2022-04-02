#!/bin/bash

# You should make work_dir refer to your repo location
work_dir="/home/ubuntu/repos/bds-csusthub"
worlds_dir="$work_dir/data/worlds"
backups_dir="$work_dir/backups"

echo $work_dir

cd $worlds_dir && $work_dir/stop_bds.sh && echo 'Server CSUST Hub stopped'

for world in $(ls $worlds_dir); do
	out_dir="$backups_dir/$world"
	ls $out_dir || mkdir $out_dir
	cd $world && zip -r "$out_dir/$world-$(date +%y-%m-%d-%H:%M:%S).mcworld" "."
	cd $worlds_dir
done
