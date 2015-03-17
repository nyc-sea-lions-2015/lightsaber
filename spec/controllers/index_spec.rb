require_relative '../spec_helper'

describe 'Index Controller' do

  it 'Should get the / route' do
      get '/'
      expect(last_response).to be_ok

  end

  it 'Should verify that the response is a redirect' do
    post '/sealions'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok

  end

  it 'Should verify redirect' do
    put '/edit/sealions'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok

  end

  it 'Should verify a delete route' do
    delete '/delete/sealions'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
  end
end
