get '/sealions' do
  @sealions = Sealion.all
  erb :'sealion/index'  
end

get '/sealions/new' do
  erb :'sealion/new' 
end

get '/sealions/:id' do
  @cur_sealion = Sealion.find_by(id: params[:id]) 

  if @cur_sealion
    erb :'sealion/show'
  else
    [404, 'No Sealion Found'] 
  end

end

get '/sealions/:id/edit' do 
  sealion = Sealion.find_by(id: params[:id])
  erb :'sealion/edit', locals: {cur_sealion: sealion} 
end

put '/sealions/:id' do
  cur_sealion = Sealion.find_by(id: params[:id])

  if cur_sealion
    cur_sealion.first_name = params[:first_name]
    cur_sealion.last_name = params[:last_name]s

    if cur_sealion.save
      redirect "/sealions/#{cur_sealion.id}"
    else
      [500, 'something went wrong']
    end

  else
    [404, "no sealionfound"]
  end

end

post '/sealions' do 
  new_sealion = Sealion.new(first_name: params[:first_name],
                            last_name:  params[:last_name])
  if new_sealion.save 
    redirect "/sealions/#{new_sealion.id}" 
  else 
    [402,"You did something wrong"]
  end
  
end