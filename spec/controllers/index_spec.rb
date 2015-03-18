require_relative '../spec_helper'

describe 'Index Controller' do

  it 'Should get the / route' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Kiran C')
  end

  it 'does an http post to the route /post_controller' do
    post '/post_controller'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
  end

  it 'does an http post to the route /put_controller' do
    put '/put_controller/with_a_param=true'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
  end

  it 'does an http delete to the route /delete_controller' do
    delete '/delete_controller'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
  end

end