get '/' do
  "Kiran C"
end

post '/post_controller' do
  redirect '/'
end

delete '/delete_controller' do
  redirect '/'
end

put '/put_controller/with_a_param=true' do
  redirect '/'
end