require 'sinatra'

get '/' do
'Samantha'
end

get '/sealions' do
'The best'
end


post '/post_something' do
  params
  puts 'Hi Sam, you posted something'
  redirect '/sealions'
end

put '/update_something' do
  params
  puts 'Hi Sam, you just updated something'
  redirect '/sealions'
end


delete '/delete_something' do
  params
  puts 'Hi Sam, you just deleted something'
  redirect '/sealions'
end

