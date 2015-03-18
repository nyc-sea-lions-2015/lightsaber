require 'sinatra'

get '/' do
  'Eveanandi Blossom Butler'
end

put '/test_put' do
  redirect '/'
end

post '/test_post' do
  redirect '/'
end

delete '/test_delete' do
  redirect '/'
end