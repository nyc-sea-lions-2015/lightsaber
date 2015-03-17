require 'sinatra'

get '/' do
  'Ben Cheng'
end

get '/sealions/:ID' do
  @id = params[:id]
  "#{@id}"
end

get '/sealions' do
 'Yay, sea lions!'
end

post '/sealions' do
  redirect '/sealions'
end

put '/sealions/:ID' do
  redirect '/sealions'
end

delete '/sealions/:ID' do
  redirect '/sealions'
end
