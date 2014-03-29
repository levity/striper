require 'sinatra'

post '/pay' do
  "body: #{request.body.read}\n"
end

