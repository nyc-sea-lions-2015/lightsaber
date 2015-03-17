require 'sinatra'

get '/' do
  'I am a Sealion'
end

post '/sealions' do
  redirect '/'
end

put '/edit/sealions' do
  redirect '/'
end

delete '/delete/sealions' do
  redirect '/'
end
