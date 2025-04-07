#!/bin/bash
set -x

source "$(dirname "$0")/shared.sh"

echo "Installing Deno ..."
curl -fsSL https://deno.land/install.sh | /bin/sh
