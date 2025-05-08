#!/bin/bash
set -eux

/bin/bash "$(cd "$(dirname "$0")" || exit 1; pwd)/scripts/setup.sh"
