#!/usr/bin/env bash

echo "Temp Dir"
ls -l /tmp/
echo
echo
echo "Current Dir"
ls -l .
echo
echo
echo "Testing go-deploy"
go-deploy -init --working-directory aws -verbose
go-deploy --working-directory aws -w production-2023-10-01 -c config.yml.sample -verbose
go-deploy --working-directory aws -w production-2023-10-01 -destroy -verbose
