require 'sinatra'

get '/' do
  "Ryan Immesberger"
end

post '/post' do
  redirect '/'
end

put '/put' do
  redirect '/'
end

delete '/delete' do
  redirect '/'
end
