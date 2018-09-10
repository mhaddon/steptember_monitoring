#!/usr/bin/env bash

envsubst < /var/configs/datasources/mysql.yaml.tmpl > /etc/grafana/provisioning/datasources/mysql.yaml

/run.sh