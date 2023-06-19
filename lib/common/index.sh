#!/usr/bin/env bash

## Environment variables
## https://asdf-vm.com/plugins/create.html#environment-variables-overview

## These are set on bin/* scripts
# export KC_ASDF_PLUGIN_ENTRY_PATH
# export KC_ASDF_PLUGIN_ENTRY_NAME
# export KC_ASDF_PLUGIN_PATH
export KC_ASDF_APP_NAME="cmctl"
export KC_ASDF_APP_DESC="a command line tool that can help you manage cert-manager and its resources inside your cluster."
export KC_ASDF_APP_REPO="https://github.com/cert-manager/cert-manager"
export KC_ASDF_DOWNLOAD_URL="https://github.com/cert-manager/cert-manager/releases/download/v{version}/cmctl-{os}-{arch}.tar.gz"
export KC_ASDF_DOWNLOAD_NAME="cmctl-{os}-{arch}.tar.gz"
export KC_ASDF_CHECKSUM_URL=""
export KC_ASDF_DOWNLOAD_LOC="cmctl"
export KC_ASDF_ORG="kc-workspace"
export KC_ASDF_NAME="asdf-cmctl"
export KC_ASDF_REPO="https://github.com/kc-workspace/asdf-cmctl"

# shellcheck source-path=SCRIPTDIR/defaults.sh
source "${KC_ASDF_PLUGIN_PATH:?}/lib/common/defaults.sh"
# shellcheck source-path=SCRIPTDIR/internal.sh
source "${KC_ASDF_PLUGIN_PATH:?}/lib/common/internal.sh"

export KC_ASDF_OS
KC_ASDF_OS="$(kc_asdf_get_os)"

export KC_ASDF_ARCH
KC_ASDF_ARCH="$(kc_asdf_get_arch)"
