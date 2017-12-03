require "http/server"

PORT = ARGV[0].to_i

server = HTTP::Server.new(PORT) do |context|
  context.response.content_type = "text/plain"
  context.response.print "#{context.request.path}"
end

puts "Listening http://127.0.0.1:#{PORT}"
server.listen
