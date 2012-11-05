require 'socket'

server = TCPServer.new 2001


loop do
  c = server.accept
  while line = c.gets
    puts line
  end
  c.close
end
