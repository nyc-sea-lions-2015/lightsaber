require 'sinatra'
#----------READ
get '/' do
  redirect '/sealions'
end

#All Entries
get '/sealions' do
  # erb :index
  erb(:'index', locals: {sealions: Sealion.all})
end

#Get the new entry form
get '/sealions/new' do
  erb :'new'
end

#Show Individual Entry
get '/sealions/:id' do
  erb(:'show', locals: {sealion: Sealion.find_by_id(params[:id])})
end

# get '/entries/:id/edit' do
#   entry = Entry.find_by(id: params[:id])
#   erb :'entries/edit', locals: {entry: entry}
# end

#Post for add new entry
post '/sealions' do
  new_sealion = Sealion.new(name: params[:name])
  if new_sealion.save
    redirect "/sealions/#{new_sealion.id}"
  else
    [402,"You did something wrong"]
  end
end


# #Update A Blog Post (Edit)
# put '/entries/:id' do
#   entry = Entry.find_by(id: params[:id])

#   if entry
#     entry.title = params[:title]
#     entry.body = params[:body]

#     if entry.save
#       redirect "/entries/#{entry.id}"
#     else
#       [500, 'something went wrong']
#     end

#   else
#     [404, "No blog post for you."]
#   end
# end

# get '/entries/:id/delete' do
#   erb :'/entries/delete', locals: {entry: Entry.find_by_id(params[:id])}
# end

# #Add Delete Route
# delete '/entries/:id' do
#   p "hello"
#   entry = Entry.find_by_id(params[:id])
#   if entry
#     entry.destroy
#     redirect "/entries"
#   else
#     [500, "Some went TERRIBLY wrong"]
#   end
# end

# get '/' do
#   redirect '/sealions'
# end

# get '/sealions' do
#   redirect '/sealions/new'
# end

# # --------CREATE
# get '/sealions/new' do
#   "There will be a form here"
#   # erb :index
# end

# post '/sealions/new/:name' do
#   Sealion.create(params[:name])
#   redirect '/sealions/new'
#   # erb :index
# end

# #---------UPDATE
# put '/sealions' do
#   redirect '/sealions'
# end


# #---------DESTROY
# delete '/remove' do
#   redirect '/sealions'
# end