STDOUT.sync = true

require 'bundler'
Bundler.require

require './app'
run App.new