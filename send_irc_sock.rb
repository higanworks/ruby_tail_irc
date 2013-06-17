#!/usr/bin/env ruby
require 'bundler/setup'
require 'irc-socket'
require 'yaml'

@irc = YAML.load_file('./config/irc.yml')
@client = IRCSocket.new(@irc['server'], @irc['port'], @irc['ssl'])
@client.connect
@client.pass @irc['pass']
@client.nick @irc['nick']
@client.user @irc['nick'], 0, "*", @irc['nick']
@client.join "##{@irc['channel']}"
sleep 1

$stdin.each_line do |line|
  @client.notice "##{@irc['channel']}", line
end
