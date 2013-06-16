#!/usr/bin/env ruby
require 'bundler/setup'
require 'carrier-pigeon'
require 'yaml'

@irc = YAML.load_file('./config/irc.yml')

$stdin.each_line do |line|
  puts "irc://#{@irc['nick']}:#{@irc['pass']}@#{@irc['server']}:/##{@irc['channel']}"
  CarrierPigeon.send(
    :uri => "irc://#{@irc['nick']}:#{@irc['pass']}@#{@irc['server']}:#{@irc['port']}/##{@irc['channel']}",
    :message => line,
    :join => @irc['join'],
    :ssl => @irc['ssl']
  )
end
