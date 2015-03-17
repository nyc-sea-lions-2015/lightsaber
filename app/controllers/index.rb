require 'sinatra'

get '/' do
  'Sealions'
end

#Create
post '/sealions' do
  redirect '/'
end

#Read
get '/sealions/:ID' do
  "Sealion #{params[:id]}"
end

#Update
put '/sealions/:ID' do
  redirect '/'
end

#Delete
delete '/sealions/:id' do
  redirect '/'
end
