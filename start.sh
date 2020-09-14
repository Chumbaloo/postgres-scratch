#!/bin/bash
# set -euo pipefail

PGPASSWORD=${POSTGRES_PASSWORD} psql -U ${POSTGRES_USER} -h ${POSTGRES_DB} postgres