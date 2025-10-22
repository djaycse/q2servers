#!/bin/bash
set +e  # continue on error
cd "$(dirname "$0")"

echo "Killing processes..."
./sh/kill_all.sh

echo "Backing up..."
./sh/backup_all.sh

echo "Deleting logs..."
./sh/del_logs_all.sh

echo "Starting servers..."
./sh/start_all.sh

echo "All scripts executed."