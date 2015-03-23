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