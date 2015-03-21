require 'sinatra'

get '/' do
  "Kurt Schnelker"
end

get '/sealions' do
  Sealion.all.to_json
end

get '/sealions/:id' do
  Sealion.find(params[:id]).to_json
end

post '/sealions/' do
  Sealion.create(params)
  redirect '/sealions'
end

put '/sealions/:id' do
  Sealion.find(params[:id]).update_attributes!(params)
  redirect '/sealions'
end

delete '/sealions/:id' do
  Sealion.find(params[:id]).destroy!
  redirect '/sealions'
end
