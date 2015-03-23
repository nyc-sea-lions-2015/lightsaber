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

get '/sealions/:id' do
  @cur_sealion = Sealion.find_by(id: params[:id])
  if @cur_sealion
    erb :show_sealion
  else
    [404, "no sealion found"]
  end
end

post '/sealions' do
  new_sealion = Sealion.new(name: params[:name])

  if new_sealion.save
    redirect '/sealions'
  else
    [402, "error"]
  end
end

put '/sealions/:id' do
  cur_sealion = Sealion.find_by(id: params[:id])

  if cur_sealion
    cur_sealion.name = params[:name]
    if cur_sealion.save
      redirect '/sealions'
    else
      [500, "didn't save update"]
    end
  else
    [404, "no sealion found"]
  end
end

delete '/sealions/:id' do
  cur_sealion = Sealion.find_by(id: params[:id])

  if cur_sealion
    if cur_sealion.destroy
      redirect '/sealions'
    else
      [500, "didn't delete"]
    end
  else
    [404, "no sealion found"]
  end
end
