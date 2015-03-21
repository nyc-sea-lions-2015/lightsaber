require_relative 'spec_helper'

describe 'IndexController' do

  describe "Get '/'" do
    it "loads homepage" do
      get '/'
      expect(last_response).to be_ok
    end

    it "displays homepage content" do
      get '/'
      expect(last_response.body).to include("Kurt Schnelker")
    end
  end

  describe "Get '/sealions" do
    it "loads a list of sealions" do
      get '/sealions'
      expect(last_response).to be_ok
    end
  end

  describe "Get '/sealions/:id'" do
    it "loads a specific sealion" do
      get '/sealions/:id'
      expect(last_response).to be_ok
    end
  end

  describe "Post '/sealions'" do
    it "creates a new sealion" do
      post '/sealions'
      expect(last_response).to be_ok
    end

    it "redirects to '/sealions'" do
      post '/sealions'
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_request.path).to eq('/sealions')
    end
  end

  describe "Put '/sealions/:id'" do
    it "edits an existing sealion" do
      put '/sealions/:id'
      expect(last_response).to be_ok
    end

    it "redirects to '/sealions'" do
      put '/sealions/:id'
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_request.path).to eq('/sealions')
    end
  end

  describe "Delete '/sealions/:id'" do
    it "destroys an existing sealion" do
      delete '/sealions/:id'
      expect(last_response).to be_ok
    end

    it "redirects to '/sealions'" do
      delete '/sealions/:id'
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_request.path).to eq('/sealions')
    end
  end
end
