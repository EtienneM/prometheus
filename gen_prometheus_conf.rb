#!/usr/bin/env ruby

require 'erb'

def target_prometheus
  return "#{ENV['APP']}.osc-fr1.scalingo.io"
end

content = File.read '/app/prometheus.yml.erb'
erb_postgresql_conf = ERB.new(content)
erb_postgresql_conf.run
