require 'sinatra'

get '/' do
  redirect '/sealions'
end

get '/sealions' do
  "Test"
end

post '/sealions/:name' do
  Sealion.create(params[:name])
  erb :index
end

put '/sealions' do
  redirect '/sealions'
end

delete '/remove' do
  redirect '/sealions'
end