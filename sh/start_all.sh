#!/bin/bash
set +e  # continue on error
cd "$(dirname "$0")"

echo "Starting OpenFFA..."
./start_openffa.sh

echo "Starting OpenTDM..."
./start_opentdm.sh

echo "Starting Tourney-insta..."
./start_tourney-insta.sh

echo "Starting Tourney-FFA..."
./start_tourney-ffa.sh

echo "All scripts executed."
screen -list