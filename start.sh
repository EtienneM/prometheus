#!/bin/bash

set -e
set -x

ruby /app/gen_prometheus_conf.rb > /app/prometheus.yml

/app/bin/prometheus --web.external-url=https://test-prometheus.osc-fr1.scalingo.io --config.file=/app/prometheus.yml
