require_relative '../spec_helper'

describe 'Get Request' do

  #-------- READ TESTS
  it "Should get the route" do
    get '/sealions'
    expect(last_response).to be_redirect
  end
end

  #-------- CREATE TESTS
describe 'GET Request' do
  let(:student_1) {Sealion.create(name:"Hoa")}

    it 'Should be ok' do
      get '/sealions/new'
      expect(last_response).to be_ok
    end

    it 'Should follow redirection' do
      post '/sealions/new/:name, params =>{:name=>"Ryan"}'
      expect(last_response).to be_redirect
    end
end 

# describe 'POST Request' do
  # it 'Should be ok' do
  #   post '/sealions/new'
  #   expect(last_response).to be_redirect
  # end

  # it 'Should follow redirection' do
  #   post '/sealions/new/?name=Ryan'
  #   follow_redirect!
  #   expect(last_response).to be_ok
  # end
# end  

  # it 'Should follow redirection' do
  #   post '/sealions'
  #   follow_redirect!
  #   expect(last_response.body).to eq("Hey Sealions!!!")
  # end

  #--------- UPDATE TESTS
# describe 'Update Request' do
#   it 'Should be redirected' do
#     put '/sealions'
#     expect(last_response).to be_redirect
#   end

#   it 'Should follow redirection' do
#     put '/sealions'
#     follow_redirect!
#     expect(last_response).to be_ok
#   end
# end
  # it 'Should follow redirection' do
  #   put '/sealions'
  #   follow_redirect!
  #   expect(last_response.body).to eq("Hey Sealions!!!")
  # end

  #-------- DELETE TESTS
# describe 'Delete Request' do
#   it 'Should be redirected' do
#     delete '/sealions'
#     expect(last_response).to be_redirect
#   end

#   it 'Should follow redirection' do
#     delete '/sealions'
#     follow_redirect!
#     expect(last_response).to be_ok
#   end

  # it 'Should follow redirection' do
  #   delete '/sealions'
  #   follow_redirect!
  #   expect(last_response.body).to eq("Hey Sealions!!!")
  # end

# end
