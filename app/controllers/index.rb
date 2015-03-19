require 'sinatra'

get '/' do
'Samantha'
end

# get '/sealions' do
# 'The best'
# end

get '/sealions' do
@people = Sealion.all
@people.to_json
end

#how to add another key for last_name?
get '/sealions/:first_name' do
  @prenom = Sealion.find_by(first_name: params[:first_name])
  @prenom.to_json
end


# post '/post_something' do
#   params
#   puts 'Hi Sam, you posted something'
#   redirect '/sealions'
# end

post '/add_member' do
  params
  @new_member = Sealion.find_or_create_by(params)
  'You just added #{@new_member.first_name.to_json}'
  redirect '/sealions'
end


# put '/update_something' do
#   params
#   puts 'Hi Sam, you just updated something'
#   redirect '/sealions'
# end

put '/update_member' do
  params
  @updated = Sealion.update_attributes(params)
  'You just updated #{@updated.first_name.to_json}'
  redirect '/sealions'
end

# delete '/delete_something' do
#   params
#   puts 'Hi Sam, you just deleted something'
#   redirect '/sealions'
# end

delete '/delete_member' do
  params
  @deleted = Sealion.find_by(params)
  @deleted.destroy
  '...deleted.'
  redirect '/sealions'
end