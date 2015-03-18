require 'sinatra'

get '/' do
  seali = Sealion.pluck(:name)
  seali.join(", ")

end

post '/post' do

  Sealion.create(params(:name))
  redirect '/'
end

put '/put' do
  redirect '/'
end

delete '/delete' do
  redirect '/'
end
