require 'sinatra'

get '/pay' do
  callback = request['cb']
  result = request.query_string
  "#{callback}('#{result}');"
end

