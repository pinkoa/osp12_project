#!/bin/bash
openstack overcloud deploy --templates \
  -e /home/stack/templates/node-info.yaml\
  -e /home/stack/templates/overcloud_images.yaml \
  -e /usr/share/openstack-tripleo-heat-templates/environments/network-isolation.yaml \
  -e /home/stack/templates/environments/network-environment.yaml \
  -e /home/stack/templates/disable-telemetry.yaml \
  --stack overcloud7 \
  --ntp-server 172.24.204.1 | tee overcloud-deploy-7.log
