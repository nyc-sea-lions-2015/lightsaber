require 'sinatra'

get '/' do
  "Lightsaber Challenge. It really works!!!"
end

get '/sealions' do
  'Hey Sealions!!!'
end

post '/sealions' do
  redirect '/sealions'
end

put '/sealions' do
  redirect '/sealions'
end

delete '/sealions' do
  redirect '/sealions'
end