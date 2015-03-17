require 'sinatra'

get '/' do
  'Lightsaber Challenge. It really works!!!'
end

post '/sealions' do
  redirect '/'
end

put '/sealions' do
  redirect '/'
end

delete '/sealions' do
  redirect '/'
end