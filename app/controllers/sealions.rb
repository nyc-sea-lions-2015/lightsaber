get "/sealions" do
  File.read(File.join("public","sealions.html"))
end

get "/sealions/:id" do
  File.read(File.join("public","sealion.html"))
end

post "/sealions" do
  redirect "/sealions"
end

put "/sealions/:id" do
  redirect "/sealions"
end

delete "/sealions/:id" do
  redirect "/sealions"
end