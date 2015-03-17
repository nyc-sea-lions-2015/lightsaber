require 'spec_helper'

describe 'Index Controller' do
  index_test = 'Sealions'
  id_3_text = 'Sealion 3'

  it 'Should get the / route' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include(index_text)
  end

  #CREATE
  it 'Should process a post request' do
    post '/sealions'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include(index_text)
  end

  #READ
  it 'Should process a read request on id 3' do
    get '/sealions/?id=3'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include(id_3_text)
  end

  #UPDATE
  it 'Should process a put request on id 3' do
    put '/sealions/'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include(id_3_text)
  end

  #DELETE
  it 'Should process a delete request on id 3' do
    delete '/sealions/?id=3'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include(id_3_text)
  end
end
