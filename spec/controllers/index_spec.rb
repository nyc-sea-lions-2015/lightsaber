require_relative '../spec_helper'

describe 'IndexController' do

  it 'Should get the /sealions route' do
      get '/sealion'
      # expect(last_response).to be_ok
      expect(last_response.body).to be_a(String)
  end

  it 'Should get the /sealions/:ID route' do
      get '/sealion/:id'
  #     expect(last_response).to be_ok
      expect(last_response.body).to be_a(String)
  end

  it 'Should post a new route' do
      post '/sealion'
      # expect(last_response).to be_redirect
      # follow_redirect!
      # expect(last_response).to be_ok
      # expect(response).to be_instance_of?(Sealion)
      # expect(last_response.body).to include('Yay, sea lions!')
  end

  it 'Should update an existing route' do
      put '/sealion/:ID', :params => {id: 4}
      # expect(last_response).to be_redirect
      # follow_redirect!
      # expect(last_response).to be_ok
      # expect(last_response.body).to include('Yay, sea lions!')
  end

  it 'Should delete existing route' do
      delete '/sealion/:ID'
  #     expect(last_response).to be_redirect
  #     follow_redirect!
  #     expect(last_response).to be_ok
  #     expect(last_response.body).to include('Yay, sea lions!')
  end
end