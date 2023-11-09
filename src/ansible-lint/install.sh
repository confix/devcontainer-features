# copied from https://github.com/devcontainers-contrib/features/blob/main/src/ansible/library_scripts.sh
# still figuring out what happens, since my bash scripting skills are quite limited...

set -e

. ./library_scripts.sh

ensure_nanolayer nanolayer_location "v0.5.0"

$nanolayer_location \
    install \
    devcontainer-feature \
    "ghcr.io/devcontainers-contrib/features/ansible:2" 

$nanolayer_location \
    install \
    devcontainer-feature \
    "ghcr.io/devcontainers-contrib/features/pipx-package:1.1.7" \
    --option package='ansible-lint' --option injections='ansible-lint' --option version="$VERSION"

echo 'Done!'