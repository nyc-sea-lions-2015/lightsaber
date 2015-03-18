require_relative '../spec_helper'

describe 'Index Controller' do

  it 'Should get the / route' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include ('Eveanandi Blossom Butler')
  end

  it 'Should process the post /test_post route'
    post '/test_post'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include('Eveanandi Blossom Butler')
  end

  it 'Should process the put/test_put route' do
    put '/test_post'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include('Eveanandi Blossom Butler')
  end

  it 'Should do an http delete to the route /test_delete' do
    delete '/test_delete'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.status).to be_ok
    expect(last_response.body).to include('Eveanandi Blossom Butler')
  end

end

