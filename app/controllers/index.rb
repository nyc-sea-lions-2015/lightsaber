get '/' do
  redirect '/calculator'
end

get '/calculator' do
  erb :calculator
end