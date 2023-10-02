#!/usr/bin/env bash

go-deploy -init --working-directory aws -verbose
go-deploy --working-directory aws -w production-2023-10-01 -c config.yml.sample -verbose
go-deploy --working-directory aws -w production-2023-10-01 -destroy -verbose
