require 'spec_helper'

describe 'Sea Lions Controller' do
  it 'should get the / route' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include("Helllloo there!")
  end

  it 'should get the /sealions route' do
    get '/sealions'
    expect(last_response).to be_ok
    expect(last_response.body).to include("...Lions! Tigers! Bears! Oh My!")
  end

  it 'should redirect to /sealions route' do
    post '/post_a_new_post'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.body).to include("...Lions! Tigers! Bears! Oh My!")
  end

end
