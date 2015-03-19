require 'sinatra'

get '/' do
  "Ryan Immesberger"
end

get '/sealions' do
  @all_sealions = Sealion.all
  erb :sealion
end

get '/sealions/new' do
  erb :new_sealion
end

post '/sealions' do
  new_sealion = Sealion.new(name: params[:name])

  if new_sealion.save
    redirect '/sealions'
  else
    [402, "error"]
  end
end

put '/put' do
  redirect '/'
end

delete '/delete' do
  redirect '/'
end
