require_relative '../spec_helper'

describe 'Index Controller' do
let (:new_sealion) {Sealion.create}

  it 'Should get the / route' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Eveanandi Blossom Butler')
  end

  it 'Should get the /sealions route' do
    get '/sealions'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('This route lists all of the sealions')
  end


  it 'Should get the /sealions/:id route' do
    get '/sealions/:id', :params => {id: 5}
    expect(last_response).to be_ok
    expect(last_response.body).to eq('This route finds a specific sealion')
    expect(:id).to eq(5)

  end


  # it 'Should process the put/test_put route' do
  #   put '/test_put'
  #   expect(last_response).to be_redirect
  #   follow_redirect!
  #   expect(last_response).to be_ok
  #   expect(last_response.body).to include('Eveanandi Blossom Butler')
  # end

  # it 'Should process the post /se route' do
  #   post '/test_post'
  #   expect(last_response).to be_redirect
  #   follow_redirect!
  #   expect(last_response).to be_ok
  #   expect(last_response.body).to include('Eveanandi Blossom Butler')
  # end
  # it 'Should do an http delete to the route /test_delete' do
  #   delete '/test_delete'
  #   expect(last_response).to be_redirect
  #   follow_redirect!
  #   expect(last_response).to be_ok
  #   expect(last_response.body).to include('Eveanandi Blossom Butler')
  # end

  #############################################

  # it 'Should process the post /test_post route' do
  #   post '/test_post'
  #   expect(last_response).to be_redirect
  #   follow_redirect!
  #   expect(last_response).to be_ok
  #   expect(last_response.body).to include('Eveanandi Blossom Butler')
  # end

  # it 'Should process the put/test_put route' do
  #   put '/test_put'
  #   expect(last_response).to be_redirect
  #   follow_redirect!
  #   expect(last_response).to be_ok
  #   expect(last_response.body).to include('Eveanandi Blossom Butler')
  # end

  # it 'Should do an http delete to the route /test_delete' do
  #   delete '/test_delete'
  #   expect(last_response).to be_redirect
  #   follow_redirect!
  #   expect(last_response).to be_ok
  #   expect(last_response.body).to include('Eveanandi Blossom Butler')
  # end

end

