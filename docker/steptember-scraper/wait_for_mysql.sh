#!/usr/bin/env bash

while ! mysqladmin ping -h"$MYSQL_DOMAIN" --silent; do
    sleep 1
done