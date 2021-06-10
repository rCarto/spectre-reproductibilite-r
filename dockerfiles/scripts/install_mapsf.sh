#!/bin/bash
set -e

# always set this for scripts but don't declare as ENV..
export DEBIAN_FRONTEND=noninteractive


install2.r --error --skipinstalled \
    mapsf 

rm -r /tmp/downloaded_packages
