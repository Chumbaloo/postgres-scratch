#!/bin/bash

set -eu

until nc -z db 5432; do
    echo "Postgresql is unavailable - waiting..."
    sleep 1
done
echo "Postgres is available."
exec "$@"
