require 'spec_helper'

describe 'Index Controller' do

  it 'Should get the / route' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Sealions')
  end

  #CREATE
  it 'Should process a post request' do
    post '/sealions'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include('Sealions')
  end

  #READ
  it 'Should process a read request on id 3' do
    get '/sealions/:ID'
    expect(last_response).to be_ok
    expect(last_response.body).to include("Sealion")
  end

  #UPDATE
  it 'Should process a put request on id 3' do
    put '/sealions/:ID'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include('Sealions')
  end

  #DELETE
  it 'Should process a delete request on id 3' do
    delete '/sealions/:ID'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include('Sealions')
  end
end
