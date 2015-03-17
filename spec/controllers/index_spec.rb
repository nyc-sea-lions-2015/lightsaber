require_relative '../spec_helper'

describe 'Index Controller' do

  #-------- READ TESTS
  it "Should get the route" do
    get '/sealions'
    expect(last_response).to be_ok
  end

  it "Should get correct response body" do
    get '/sealions'
    expect(last_response.body).to eq("Hey Sealions!!!")
  end

  #-------- CREATE TESTS

  it 'Should be redirected' do
    post '/sealions'
    expect(last_response).to be_redirect
  end

  it 'Should follow redirection' do
    post '/sealions'
    follow_redirect!
    expect(last_response).to be_ok
  end

  it 'Should follow redirection' do
    post '/sealions'
    follow_redirect!
    expect(last_response.body).to eq("Hey Sealions!!!")
  end

  #--------- UPDATE TESTS

  it 'Should be redirected' do
    put '/sealions'
    expect(last_response).to be_redirect
  end

  it 'Should follow redirection' do
    put '/sealions'
    follow_redirect!
    expect(last_response).to be_ok
  end

  it 'Should follow redirection' do
    put '/sealions'
    follow_redirect!
    expect(last_response.body).to eq("Hey Sealions!!!")
  end

  #-------- DELETE TESTS
  it 'Should be redirected' do
    delete '/sealions'
    expect(last_response).to be_redirect
  end

  it 'Should follow redirection' do
    delete '/sealions'
    follow_redirect!
    expect(last_response).to be_ok
  end

  it 'Should follow redirection' do
    delete '/sealions'
    follow_redirect!
    expect(last_response.body).to eq("Hey Sealions!!!")
  end

end
