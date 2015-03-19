require 'sinatra'

get '/' do
  'Sealions'
end

#Create
post '/sealions' do
  redirect '/'
end

#Read
get '/sealions/:id' do
  "Sealion"
end

#Update
put '/sealions/:id' do
  redirect '/'
end

#Delete
delete '/sealions/:id' do
  redirect '/'
end
