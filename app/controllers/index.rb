
get '/' do
  "Helllloo there!"
end

get '/sealions' do
  "...Lions! Tigers! Bears! Oh My!"
end

get '/sealions/:ID' do
  "This id # is 9"
end

post '/post_a_new_post' do
  redirect '/sealions'
end

put '/putting_on_the_ritz' do
  redirect '/sealions'
end

delete '/delete_me' do
  redirect '/sealions'
end

#create
post '/sealion/:name' do
  new_sealion = Sealion.create(params[:name])
  redirect '/sealions'
end

#update
put '/sealion/:name' do
  charlie = Sealion.find_by(params[:name])
  charlie.update_attribute(name: "Charlotte")
  redirect '/sealions'
end

