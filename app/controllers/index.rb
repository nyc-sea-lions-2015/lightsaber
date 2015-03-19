require 'sinatra'

get '/' do
  'Ben Cheng'
  redirect '/sealions'
end

get '/sealions' do
  # 'Yay, sea lions!'
  @sealion = Sealion.all
  @names = []
  @sealion.each {|person| @names << (person.first_name + " " + person.last_name)}
  @names.join(", ")
end

get '/sealions/:id' do
  @sealion = Sealion.find(params[:id])
  @sealion.first_name + " " + @sealion.last_name
end

post '/sealions/' do
  new_sealion = Sealion.create(params)
  redirect '/sealions'
end

put '/sealions/:id' do
  edit_sealion = Sealion.find(params[:id])
  redirect '/sealions'
end

delete '/sealions/:id' do
  del_sealion = Sealion.find(params[:id])
  del_sealion.destory
  redirect '/sealions'
end
