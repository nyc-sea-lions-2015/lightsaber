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


# put '/update_something' do
#   params
#   puts 'Hi Sam, you just updated something'
#   redirect '/sealions'
# end

put '/update_member' do
  params
  @updated = Sealion.update_attributes(params)
  'You just updated #{@updated.first_name.to_json}'
  redirect '/sealions'
end

# delete '/delete_something' do
#   params
#   puts 'Hi Sam, you just deleted something'
#   redirect '/sealions'
# end

delete '/delete_member' do
  params
  @deleted = Sealion.find_by(params)
  @deleted.destroy
  '...deleted.'
  redirect '/sealions'
end