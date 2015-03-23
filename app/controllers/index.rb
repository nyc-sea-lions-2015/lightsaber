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

get '/sealions/:id/edit' do
  @edit_lion = Sealion.find(params[:id])
  erb :'sealions/edit'
end

get '/sealions/:id/delete' do
  @del_lion = Sealion.find(params[:id])
  erb :'sealions/delete'
end

get '/sealions/:id' do
  @sealion = Sealion.find(params[:id])
  erb :'sealions/show'
end

post '/sealions' do
  new_lion = Sealion.new(first_name: params[:first_name],
                            last_name:  params[:last_name])
  new_lion.save
  redirect "/sealions/#{new_lion.id}"
end

put '/sealions/:id' do
  edit_lion = Sealion.find_by_id(params[:id])
  if edit_lion
    edit_lion.first_name = params[:first_name]
    edit_lion.last_name = params[:last_name]
    edit_lion.save
    redirect "/sealions/#{edit_lion.id}"
  else
    [404, "no sealions found"]
  end
end

delete '/sealions/:id' do
  del_lion = Sealion.find(params[:id])
  if del_lion
    del_lion.destroy
    redirect '/sealions'
  else
    [500, "IMPOSSIBLE TO DELETE!"]
  end
end
