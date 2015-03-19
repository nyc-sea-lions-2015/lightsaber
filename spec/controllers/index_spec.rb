require_relative '../spec_helper'

describe 'Index Controller' do
  let(:person) {Person.create(first:"Kiran", last:"c")}

  describe "GET /people/:id" do
    it "loads the people page" do
    get '/people/:id'
    expect(last_response).to be_ok
  end
end

describe "POST /people" do
  it "creates people, redirects to index" do
   post '/people', params={person:{first:"Kiran", last: "c"}}
   expect(last_response).to be_redirect
   follow_redirect!
   last_request.path.should == "/"
  end
end

 describe "DELETE /people" do
  it "deletes people from database" do
   delete '/people/:id'
   expect(last_response).to be_redirect
   follow_redirect!
   last_request.path.should == "/"
  end
end

  describe "PUT /people" do
  it "Updates a record in the database" do
   put '/people/:id'
   expect(last_response).to be_redirect
   follow_redirect!
   last_request.path.should == "/"
  end
end

end