#!/bin/bash

work_dir=${0%/*}
cd "$work_dir/docker" && sudo docker-compose start
