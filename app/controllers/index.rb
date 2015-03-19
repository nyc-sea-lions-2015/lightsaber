require 'sinatra'

get '/' do
  @sealions = Sealion.all
  erb :'/sealion/view'
end

get '/sealion/:id' do
  @sealion = Sealion.find(params[:id])

  erb:'/sealion/resources'
end

post '/sealions' do
  @sealion = Sealion.create(params)
  redirect '/'
end

get '/sealion/:id/edit' do
  @sealion = Sealion.find(params[:id])

  erb :'/sealion/edit'
end

put '/sealion/:id/edit' do
  @sealion = Sealion.find(params[:id])

  @sealion.save

  redirect "/sealion/#{@sealion.id}"
end

get '/sealion/:id/delete' do
  @sealion = Sealion.find(params[:id])
  erb :'/sealion/delete'
end


delete '/sealion/:id/delete' do
 @sealion = Sealion.find(params[:id])

 @sealion.destroy
 redirect '/'
end
