require 'sinatra'

get '/' do
  "Kurt Schnelker"
end

get '/sealions' do
  "< A list of Sealions >"
end

get '/sealions/:ID' do
  "< A specific Sealion >"
end

post '/sealions' do
  # "< Create a new Sealion >"
  redirect '/'
end

put '/sealions/:ID' do
  # "< Edit existing Sealion >"
  redirect '/'
end

delete '/sealions/:ID' do
  # "< Delete a specific Sealion >"
  redirect '/'
end
