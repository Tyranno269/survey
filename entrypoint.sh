#!/bin/sh

set -e

rm -f /survey/tmp/pids/server.pid

exec "$@"