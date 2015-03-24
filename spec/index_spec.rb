require_relative 'spec_helper'
#-----get-----
describe 'Sea Lions Controller' do
# let(:charlie) {Sealion.create(name: "Charlie", weight: 234)}

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

  it 'should get the specific sealion by id #' do
    get "/sealions/:ID?id=1"
    expect(last_response).to be_ok
    # expect(last_response.body).to include("This is sealion #1")
    expect(last_response.body).to include("His name is Charlie")
  end

  it "should change Charlie's name to Charlotte " do
    put "sealions/#{charlie.name}/update"
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.body).to include("Charlotte")
  end

  it "should create"

  # it 'should get the specific sealion with the name Charlie' do
  #   get '/sealions/Charlie'
  #   expect(last_response).to be_ok
  #   expect(last_response.body).to include( "Hello Charlie")
  # end
  # it 'should redirect to /sealions route' do
  #   post '/post_a_new_post'
  #   expect(last_response).to be_redirect
  #   follow_redirect!
  #   expect(last_response.body).to include("...Lions! Tigers! Bears! Oh My!")
  # end
#------post-------







  # it 'should redirect to /sealions route' do
  #   put '/putting_on_the_ritz'
  #   expect(last_response).to be_redirect
  #   follow_redirect!
  #   expect(last_response.body).to include("...Lions! Tigers! Bears! Oh My!")
  # end

  # it 'should redirect to /sealions' do
  #   delete '/delete_me'
  #   expect(last_response).to be_redirect
  #   follow_redirect!
  #   expect(last_response.body).to include("...Lions! Tigers! Bears! Oh My!")

  # end


end
