require 'sinatra'

get '/' do
  'Sealions'
end

#Create
post '/sealions' do
  Sealion.create(:name => params[:name])
  redirect '/'
end

#Read
get '/sealions/:id' do
  "Sealion"
end

#Update
put '/sealions/:id' do
  Sealion.update_attribute(:name => params[:name])
  redirect '/'
end

#Delete
delete '/sealions/:id' do
  redirect '/'
end
