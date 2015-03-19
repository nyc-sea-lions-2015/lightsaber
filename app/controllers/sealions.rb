get "/sealions" do
  Sealion.all.to_json
end

get "/sealions/:id" do
# get "/sealions/:id" do |id|
   sealion = Sealion.find(params[:id])
   sealion.to_json
end

post "/sealions" do
  sealion = Sealion.create(params)
  redirect "/sealions"
end

put "/sealions/:id" do
  sealion = Sealion.find(params[:id])
  sealion.update_attributes(params)
  redirect "/sealions"
end

delete "/sealions/:id" do
  sealion = Sealion.find(params[:id])
  sealion.destroy
  redirect "/sealions"
end