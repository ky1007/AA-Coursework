require 'rack'

my_app = Proc.new do |env|
  req = Rack::Request.new(env)
  res = Rack::Response.new

  res['Content-Type'] = 'text/html'
  # res.write("Why does Steven drink chocolate milk all the time?")

  url_path = req.path
  res.write("#{url_path}")

  res.finish
end

Rack::Server.start(
  app: my_app,
  Port: 3000
)
