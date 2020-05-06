#!/bin/sh
set -e

# Environment variables are set by packer
/tmp/terraform-linode-nomad/modules/install-nomad/install-nomad --version "${NOMAD_VERSION}"


git clone --branch "${CONSUL_MODULE_VERSION}"  https://github.com/stvnjacobs/terraform-linode-consul.git /tmp/terraform-linode-consul
/tmp/terraform-linode-consul/modules/install-consul/install-consul --version "${CONSUL_VERSION}"
