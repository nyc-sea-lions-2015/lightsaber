require 'sinatra'

get '/sealions' do
  @all_sealions = Sealion.all
  erb :'index'
end

# get '/sealions/:id' do
#   'This route finds a specific sealion'
#   Sealion.find(params[:id]).to_json
# end

# put '/sealions/:id' do
#   # What are we supposed to put as the argument for update
#   Sealion.find(params[:id]).update_attributes!(params)
#   redirect '/sealions'
# end

# post '/sealions' do
#   # How do you capture these parameters, and then use them??
#   Sealion.create(params)
#   redirect '/sealions'
# end

# delete '/sealions/:id' do
#   Sealion.find(params[:id]).delete
#   redirect '/sealions'
# end