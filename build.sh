#!/bin/bash

docker run -v "$(pwd)":/workspace -w /workspace -e PACKER_PLUGIN_PATH=/workspace/.packer.d/plugins docker.io/hashicorp/packer:light-1.14.3 init .
docker run -v "$(pwd)":/workspace -v $HOME/.oci:/root/.oci -w /workspace -e PACKER_PLUGIN_PATH=/workspace/.packer.d/plugins docker.io/hashicorp/packer:light-1.14.3 build -var-file=vars.pkrvars.hcl -on-error=ask .