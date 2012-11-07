# -*- coding: utf-8 -*-
require 'socket'

server = TCPServer.new 2001


#loop do
c = server.accept
ary=[]
#while line = c.gets
# ary << line
# puts line
# puts "whilessa"
#end
ary << c.read
puts ary
puts
puts "luettu selain"
puts

alt = ary.join('##')
url = ary.select{|v| v.split(" ")[0]=="GET"}
url = url[0].split(" ")[1] if url

puts "url #{url}"
puts
unless url == "url"
  uri = URI(url)
  res = Net::HTTP.get_response(uri)
  pute res
end
  #nyt on saatu get.
  # tehdään oma get ja passataan kamat takas tolle
puts "closing"
c.close
#end
