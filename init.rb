# config.ru
require 'bundler'

env = ENV['RACK_ENV'] || 'development'
Bundler.require :default, env

# pull in the helpers and controllers
Dir.glob('./app/{model,views,controllers}/*.rb').each { |file| require file }