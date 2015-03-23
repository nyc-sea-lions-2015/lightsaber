require_relative '../spec_helper'

describe 'index controller' do
  it 'should process the get /sealions route' do
    get '/sealions'
    expect(last_response).to be_ok
    expect(last_response.body).to include('The best')
  end

  it 'should process the post /post_something route' do
    # post '/post_something', :params => {info: mypost}
    post '/post_something'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include('The best')
    end



  it 'should process the put /update_something route' do
    # put '/update_something', :params => with_a_param=true
    put '/update_something'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include('The best')
    end


    it 'should process the delete /delete_something route' do
      # delete '/delete_something', :params => with_a_param=true
      delete '/delete_something'
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_response).to be_ok
      expect(last_response.body).to include('The best')
    end

end
