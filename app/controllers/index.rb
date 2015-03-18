require 'sinatra'

get '/' do
  'I am a Sealion'
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
