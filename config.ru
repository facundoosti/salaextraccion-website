# encoding: utf-8

require './init'

run Rack::URLMap.new(
  '/'  => App.new,
)
