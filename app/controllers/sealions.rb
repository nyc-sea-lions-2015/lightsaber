get '/sealions' do
  @sealions = Sealion.all
  erb :'sealions/index'  
end

get '/sealions/new' do
  erb :'sealions/new' 
end

get '/sealions/:id' do
  sealion = Sealion.find_by_id(params[:id]) 

  if sealion
    erb :'sealions/show', locals: {sealion: sealion}
  else
    [404, 'No Sealion Found'] 
  end

end

get '/sealions/:id/edit' do 
  sealion = Sealion.find_by(id: params[:id])
  erb :'/sealions/edit', locals: {sealion: sealion} 
end

put '/sealions/:id' do
  cur_sealions = Sealions.find_by(id: params[:id])

  if cur_sealions 
    cur_sealions.name = params[:name]
    cur_sealions.age = params[:age]
    cur_sealions.quirk = params[:quirk]

    if cur_sealions.save
      redirect "/sealions/#{cur_sealions.id}"
    else
      [500, 'something went wrong']
    end

  else
    [404, "no sealions found"]
  end

end

post '/sealions' do 
  new_sealion = Sealions.new(name: params[:name],
                            age:  params[:age],
                            quirk: params[:quirk])
  if new_sealions.save 
    redirect "/sealions/#{new_sealion.id}" 
  else 
    [402,"You did something wrong"]
  end
  
end
