require_relative '../spec_helper'

describe 'IndexController' do

  it 'Should get the /sealions route' do
      get '/sealions'
      expect(last_response).to be_ok
      expect(last_response.body).to include('Yay, sea lions!')
  end

  it 'Should get the /sealions/:ID route' do
      get '/sealions/:ID?id=3'
      expect(last_response).to be_ok
      expect(last_response.body).to include("#{@id}")
  end

  it 'Should post a new route' do
      post '/sealions'
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_response).to be_ok
      expect(last_response.body).to include('Yay, sea lions!')
  end

  it 'Should update an existing route' do
      put '/sealions/:ID', :params => {id: 4}
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_response).to be_ok
      expect(last_response.body).to include('Yay, sea lions!')
  end

  it 'Should delete existing route' do
      delete '/sealions/:ID'
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_response).to be_ok
      expect(last_response.body).to include('Yay, sea lions!')
  end
end