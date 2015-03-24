#read

get '/' do
  erb :"index"
end

get '/sealions' do
  erb :"sealions/index"
end

# get '/sealions/:name' do
#   name = Sealion.find_by(name: params[:name])
#   unless name.nil?
#     "This is #{Sealion.find(params[:name]}"
#   else
#     [404, "Sealion does not exist FOOL!"]
#   end
# end

post '/sealions/new' do

  Sealion.create(params)
  redirect '/sealions'
end

get '/sealions/new' do
  erb(:new, locals: {name: params[:name], weight: params[:weight]})
end


get '/sealions/:id' do
  friend = Sealion.find_by(id: params[:id])
  unless friend.nil?
    "This is #{Sealion.find(params[:id]).name}. My number is #{params[:id]}"
  else
    [404, "Sealion does not exist FOOL!"]
  end
end



# get '/sealions/:name' do
#   name = Sealion.find_by(name: params[:name])
#   unless name.nil?
#     "This is #{Sealion.find(params[:name]}"
#   else
#     [404, "Sealion does not exist FOOL!"]
#   end
# end


#create


#update
put '/sealions/:id/update' do
  charlie = Sealion.find_by(id: params[:id])
  charlie.update_attribute(name: "Charlotte")
  redirect '/sealions'
end

delete '/sealions/delete' do
  redirect '/sealions'
end




# get '/sealions/:name' do
#   new_sealion = Sealion.find_by(params[:name])
#   "Hello #{new_sealion.name.capitalize}"

# end

# # create
# post '/sealion/:name' do
#   new_sealion = Sealion.create(params)
#   redirect '/sealions'
# end




#delete

# get '/sealions/:ID' do
#   "This id # is 9"
# end

# post '/post_a_new_post' do
#   redirect '/sealions'
# end

# put '/putting_on_the_ritz' do
#   redirect '/sealions'
# end
