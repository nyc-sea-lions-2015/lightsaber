require_relative "../spec_helper"
describe "SealionsController" do
 let(:sealion) {Sealion.create(name: "Bob", favourite_dance: "Tango")}

  it "should process the get /sealions route"  do
    get "/sealions"
    # expect(last_response).to be_ok
    # expect(last_response.body).to include("in sealions html")
    expect(last_response).to be_ok
  end

  it "should process the get /sealions/:id route" do
    get "/sealions/1"
    expect(last_response.body).to be_ok
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