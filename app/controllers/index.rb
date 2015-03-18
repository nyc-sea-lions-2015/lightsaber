require 'sinatra'

get '/' do
  'Hoa The Nguyen'
end

get '/sealions' do
  'ARG ARG'
end

post '/sealions' do
  redirect('/sealions')
end

put '/sealions' do
  redirect('/sealions')
end

delete '/sealions' do
  redirect('/sealions')
end