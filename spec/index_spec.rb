require 'spec_helper'

describe 'Index Controller' do

  it 'Should get the / route' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Sealions')
  end

  #CREATE
  it 'Should process a post request' do
    expect{
      post '/sealions', {name: 'Lauren'}
    }.to change(Sealion, :count).by(1)
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include('Sealions')
  end

  #READ
  it 'Should process a read request on id 3' do
    get '/sealions/3'
    expect(last_response).to be_ok
    expect(last_response.body).to include("Sealion")
  end

  #UPDATE
  it 'Should process a put request to change name' do
    put '/sealions/'
    sealion = Sealion.find_by(name: 'Lauren')
    sealion.update_attribute(:name, 'Snootie')
    expect(sealion.name).to eql('Snootie')
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include('Sealions')
  end

  #DELETE
  it 'Should process a delete request on first sealion' do
    delete '/sealions/'
    sealion = Sealion.find_by(name: 'Lauren')
    sealion.destroy
    expect(sealion.name).to be_null
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include('Sealions')
  end
end
