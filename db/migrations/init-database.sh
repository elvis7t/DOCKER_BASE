#!/usr/bin/env bash

mysql -u root -proot useacabeca < "/docker-entrypoint-initdb.d/001-create-tables.sql"

