require 'sinatra'
#----------READ

get '/sealions' do
  redirect '/sealions/new'
end

# --------CREATE
get '/sealions/new' do
  "There will be a form here"
  # erb :index
end

post '/sealions/new/:name' do
  Sealion.create(params[:name])
  redirect '/sealions/new'
  # erb :index
end

#---------UPDATE
put '/sealions' do
  redirect '/sealions'
end


#---------DESTROY
delete '/remove' do
  redirect '/sealions'
end