require 'sinatra'
require 'sinatra/json'

get '/' do
  json ENV.to_h
end

get '/env/:key' do |key|
  json key => ENV[key.upcase]
end
