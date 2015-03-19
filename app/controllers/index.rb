require 'sinatra'

get '/' do
  erb :index
end

get '/sealions' do
  @sealion = Sealion.all
  erb :'sealions/index'
end

get '/sealions/new' do
  erb :'sealions/new_lion'
end

get '/sealions/:id' do
  @sealion = Sealion.find(params[:id])
  erb :'sealions/show'
end

post '/sealions/' do
  new_lion = Sealion.new(first_name: params[:first_name],
                            last_name:  params[:last_name])
  if new_lion.save
    redirect "/sealions/#{new_lion.id}"
  else
    [400..417, "Whoops, that wasn't right"]
  end
end

put '/sealions/:id' do
  @edit_sealion = Sealion.find(params[:id])
  redirect '/sealions'
end

delete '/sealions/:id' do
  @del_sealion = Sealion.find(params[:id])
  redirect '/sealions'
end
