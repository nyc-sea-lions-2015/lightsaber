require_relative '../spec_helper'

describe 'Sealions Controller' do

  it 'Should get the /sealions route' do
    get '/sealions'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Welcome to the Sealions page')
  end

  it 'Should process the \'post/sea_post\' route' do
    post '/sea_post'

  end
end
