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

  describe "Get '/sealions/:ID'" do
    it "loads a specific sealion" do
      get '/sealions/:ID'
      expect(last_response).to be_ok
    end
  end

  describe "Post '/sealions'" do
    it "creates a new sealion" do
      get '/sealions'
      expect(last_response).to be_ok
    end

    it "redirects to '/'" do
      post '/sealions'
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_request.path).to eq('/')
    end
  end

  describe "Put '/sealions/:ID'" do
    it "edits an existing sealion" do
      get '/sealions/:ID'
      expect(last_response).to be_ok
    end

    it "redirects to '/'" do
      put '/sealions/:ID'
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_request.path).to eq('/')
    end
  end

  describe "Delete '/sealions/:ID'" do
    it "destroys an existing sealion" do
      get '/sealions/:ID'
      expect(last_response).to be_ok
    end

    it "redirects to '/'" do
      delete '/sealions/:ID'
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_request.path).to eq('/')
    end
  end
end
