require_relative "../spec_helper"
describe "SealionsController" do

  it "should process the get /sealions route"  do
    get "/sealions"
    expect(last_response).to be_ok
    expect(last_response.body).to include("in sealions html")
  end

  it "should process the get /sealions/:id route" do
    get "/sealions/:id"
    expect(last_response.body).to include("in sealion html")
  end

  it "should process the post /sealions route" do
    post "/sealions"
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.body).to include("in sealions html")
  end

  it "should process the put /sealions/:id route" do
    put "/sealions/:id"
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.body).to include("in sealions html")
  end

  it "should process the delete /sealions/:id route" do
    delete "/sealions/:id"
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.body).to include("in sealions html")
  end

end