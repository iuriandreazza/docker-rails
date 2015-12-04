#!/bin/bash

cd /home/app/webapp

exec ./load_env.sh chpst -u app bundle exec puma -C /etc/puma.rb \
  2>&1 |logger -s -t appserver
