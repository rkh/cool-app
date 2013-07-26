require_relative 'app'
require 'stringio'

reply = Sinatra::Application.call 'PATH_INFO' => '/', 'REQUEST_METHOD' => 'GET', 'rack.input' => StringIO.new
fail "wrong status code" if reply.first != 200
puts "success"
