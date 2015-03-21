get "/sealions" do
  erb(:"sealions/index", locals: {sealions: Sealion.all})
end

get "/sealions/new" do
  erb :"sealions/new"
end

get "/sealions/:id/edit" do
  sealion = Sealion.find_by(id: params[:id])
  erb :"sealions/edit", locals: {sealion: sealion}
end

get "/sealions/:id/delete" do
   sealion=Sealion.find_by(id: params[:id])
   sealion.destroy
   redirect "/sealions"
end

get "/sealions/:id" do
   sealion = Sealion.find_by(id: params[:id])
   if sealion
    erb(:"sealions/show", locals: {sealion: sealion})
   else
    [404,"There is no sealion with id #{params[:id]}"]
   end
end

post "/sealions" do
  sealion = Sealion.new(name: params[:name],favourite_dance: params[:favourite_dance] )
  if sealion.save
    redirect "/sealions/#{sealion.id}"
  else
    [402, "You might have messed it up"]
  end
end

put "/sealions/:id" do
  lion = Sealion.find(params[:id])
  lion.name=params[:name]
  lion.favourite_dance=params[:favourite_dance]
  if lion.save
    redirect "/sealions/#{lion.id}"
  else
    [500,"you messed up"]
  end
end

delete "/sealions/:id" do
  sealion = Sealion.find(params[:id])
  sealion.destroy
  redirect "/sealions"
end