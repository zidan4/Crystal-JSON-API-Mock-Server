require "http/server"
require "json"

server = HTTP::Server.new do |ctx|
  ctx.response.content_type = "application/json"
  ctx.response.print({ status: "ok", message: "Welcome to Crystal API!" }.to_json)
end

puts "Listening on http://localhost:8080"
server.listen(8080)
