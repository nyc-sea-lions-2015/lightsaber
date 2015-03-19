require 'sinatra'

get '/' do
	"Malcolm Bouzi"
end

get '/sealions' do
	'tigers & bears, OH MY!'
end

post '/sealions' do
	redirect('/sealions')
end

put '/sealions' do
	redirect('/sealions')
end

delete '/sealions' do
	redirect('/sealions')
end