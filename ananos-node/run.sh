#!/bin/bash

ananos_dir="$HOME/Ananos"

if [ ! -d "$ananos_dir" ]; then
    echo "Ananos directory not found. Creating..."
    mkdir $ananos_dir
    /app/ananos_node --generate_config node > $ananos_dir/config-node.toml
    /app/ananos_node --generate_config rpc > $ananos_dir/config-rpc.toml
fi

# Start node
/app/ananos_node --daemon 