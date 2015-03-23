get '/sealions' do
  @people = Sealion.all
  erb :"sealions/index"
end

get '/sealions/new' do
  erb :"sealions/new"
end

get '/sealions/:id' do
  @person = Sealion.find_by(id: params[:id])
  erb :"sealions/show"
end


get '/sealions/:id/edit' do
  @sealion_to_update = Sealion.find_by(:id => params[:id])
  erb :"sealions/edit"
end

put '/sealions/:id' do
  @sealion_update = Sealion.find_by(:id => params[:id])
  if @sealion_update
    @sealion_update.first_name = params[:first_name]
    @sealion_update.last_name = params[:last_name]
    @sealion_update.age = params[:age]
    @sealion_update.gender = params[:gender]

    if @sealion_update.save
      redirect "/sealions/#{@sealion_update.id}"
    else
      [500, "Something is wrong with your new information"]
    end
  else
    [404, "Something went wrong"]
  end
end





post '/sealions' do
  @new_sealion = Sealion.find_or_initialize_by(:first_name => params[:first_name],
                                                :last_name => params[:last_name],
                                                :age => params[:age],
                                                :gender => params[:gender])
  if @new_sealion.save
    redirect "/sealions/#{@new_sealion.id}"
  else
    [404, "This sealion couldn't be added."]
  end
end

delete '/sealions/:id/delete' do
  @sealion_to_delete = Sealion.find_by(:id => params[:id])
  @sealion_to_delete.destroy
  redirect "/sealions"
end