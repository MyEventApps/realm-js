#!/bin/bash
set -eo pipefail

script_folder="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# shellcheck source=/dev/null
. "${script_folder}/../dependencies.list"

js_server_bundle="realm-sync-server-${REALM_SYNC_VERSION}.tgz"
curl -f -L "https://static.realm.io/downloads/node/$js_server_bundle" -o "$js_server_bundle"
npm install --no-save "$js_server_bundle"
