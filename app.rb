
require 'sinatra'

get '/foo/:key' do |key|
  ENV[key]
end
