#!/usr/bin/env ruby

require 'socket'

$debug = 1

puts "#{__FILE__}: #{__LINE__}:#{Time.now}: DEBUG: Server: Starting" if $debug == 1
server = TCPServer.new('127.0.0.1',0)
puts "#{__FILE__}: #{__LINE__}:#{Time.now}: DEBUG: Server: Port: Search" if $debug == 1
port = server.addr[1]
puts "#{__FILE__}: #{__LINE__}:#{Time.now}: DEBUG: Server: Port: #{port}" if $debug == 1

loop do
	client = server.accept
	puts "#{__FILE__}: #{__LINE__}:#{Time.now}: DEBUG: client connected" if $debug == 1
	client.puts "Time: #{Time.now}"
	client.close
	puts "#{__FILE__}: #{__LINE__}:#{Time.now}: DEBUG: client closed" if $debug == 1
end

puts "#{__FILE__}: #{__LINE__}:#{Time.now}: DEBUG: Server: Ending" if $debug == 1
exit(1)
