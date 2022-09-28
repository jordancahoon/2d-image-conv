#!/bin/sh

# Script directions: docker build -t runscript . && ./runscript.sh {IMG_FILE} {TARGET_DIR}


# Enter the complete path to the directory that will store downloaded files

HOST_IMG="${1##*/}"
HOST_DIR="${1%/*}"
HOST_CONFIG_DIR="$2"

# Enter the path to the directory that contains the config file and a key

HOST_CONFIG_DIR="$2"



# Run a docker container to download all files from the OCI folder to the local host directory
docker run --name run --rm \
  -v ${HOST_DIR}:/app/target_dir \
  -v ${HOST_CONFIG_DIR}:/app/config_dir \
  runscript /app/target_dir/$HOST_IMG /app/config_dir/
