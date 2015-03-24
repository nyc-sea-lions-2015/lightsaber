require 'sinatra'

get '/' do
  @sealions = Sealion.all
  'I am a Sealion'
  erb :"sealion/home"
end

post '/sealions' do
  @sealion = Sealion.create(params)
  redirect '/'
end

put '/sealions/:id/edit' do
 s = Sealion.find(params{:id})

  redirect '/'
end

delete '/sealions/:id/delete' do
  s = Sealion.find(params[:id])
  s.destroy
  redirect '/'
end
