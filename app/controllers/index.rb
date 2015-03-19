get '/people/:id' do
  @thepeeps = Person.find(params[:id])
  erb :'/'
end

post '/people' do
  @thepeeps = Person.create(params[:first])
  redirect '/'
end

delete '/people/:id' do
  @thepeeps = Person.find(params[:id]).destroy
  redirect '/'
end

put '/people/:id' do
  @thepeeps = person.find(params[:id])
  @thepeeps.update(first: params[:first])
  redirect '/'
end