#!/bin/bash
#
# Project:: Vagrant Boxes
#
# Copyright 2020, Route 1337, LLC, All Rights Reserved.
#
# Maintainers:
# - Matthew Ahrenstein: matthew@route1337.com
#
# See LICENSE
#

echo "Deleting old versions of roles..."
rm -rf ./ansible/roles/route1337*
echo "Pulling new versions of dependency roles..."
ansible-galaxy install -r ansible/roles/requirements.yml -p ./ansible/roles
echo "Done."
