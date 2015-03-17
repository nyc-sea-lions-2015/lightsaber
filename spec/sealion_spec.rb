require 'spec_helper'

describe 'Sealions Model' do
  it 'should get the / route' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Ryan Immesberger')
  end

  it 'should get the /post route' do
    post '/post'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include('Ryan Immesberger')
  end

  it 'should get the /put route' do
    put '/put', :params => {with_a_param: true}
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include('Ryan Immesberger')
  end

  it 'Should get the /delete route' do
    delete '/delete'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include('Ryan Immesberger')
  end

end
