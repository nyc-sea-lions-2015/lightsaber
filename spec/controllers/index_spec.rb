require_relative '../spec_helper'

describe 'IndexController' do
  let(:ben){Sealion.create({:first_name => "Ben", :last_name => "Cheng"}, {:first_name => "Ryan", :last_name => "Blecher"})}

  it 'should open to index.erb' do
    get '/'

  end

  it 'Should get the /sealions route' do
      get '/sealions'
      # expect(last_response).to be_ok
      expect(last_response.body).to be_a(String)
  end

  it 'Should get the /sealions/:ID route' do
      get '/sealions/:id'
      # expect(last_response).to be_ok
      expect(last_response.body).to be_a(String)
  end

  it 'Should post a new route' do
      # post '/sealions'
      # expect(last_response).to be_instance_of?(Sealion)
      # follow_redirect!
      # expect(last_request.path).to eq('/sealion')
      # expect(last_response).to be_ok
      # expect(last_response.body).to include('Yay, sea lions!')
  end

  it 'Should update an existing route' do
      # put '/sealions/:id'
      # follow_redirect!
      # expect(last_request.path).to eq('/sealion')
      # expect(last_response).to be_ok
      # expect(last_response.body).to include('Yay, sea lions!')
  end

  it 'Should delete existing route' do
      # delete '/sealions/:id'
      # follow_redirect!
      # expect(last_request.path).to eq('/sealion')
  #     expect(last_response).to be_ok
  #     expect(last_response.body).to include('Yay, sea lions!')
  end
end