#!/bin/bash

./sh/kill_all.sh
./sh/backup_all.sh
./sh/del_logs_all.sh
./sh/start_all.sh

screen -list
