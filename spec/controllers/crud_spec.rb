describe 'index controller' do
  describe '#get' do
  it 'should process the get /sealions route' do
    expect(last_response).to be_ok
    expect(last_response.body).to include ('The best')
  end
end

  describe '#post' do
  it 'should process the post /post_something route' do
    post '/post_something', :params => {info: Mypost}
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include('The best')
    end
  end

  describe '#put' do
  it 'should process the put /update_something route' do
    put '/update_something', :params => with_a_param=true
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include('The best')
    end
  end

  describe '#delete' do
    it 'should process the delete /delete_something route' do
      delete '/delete_something', :params => with_a_param=true
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_response).to be_ok
      expect(last_response.body).to include('The best')
    end
  end
end
