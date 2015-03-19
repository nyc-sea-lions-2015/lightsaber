require_relative '../spec_helper'

describe 'index controller' do
  describe '#get' do
    it 'should get' do
      get '/sealions'
      expect(last_response).to be_ok
      expect(last_response.body).to include('ARG ARG')
    end
  end
  describe '#post' do
    it 'should post' do
      post '/sealions'
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_response).to be_ok
      expect(last_response.body).to include('ARG ARG')
    end
  end
  describe '#put' do
    it 'should put' do
      put '/sealions'
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_response).to be_ok
      expect(last_response.body).to include('ARG ARG')
    end
  end
  describe '#delete' do
    it 'should delete' do
      delete '/sealions'
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_response).to be_ok
      expect(last_response.body).to include('ARG ARG')
    end
  end
end