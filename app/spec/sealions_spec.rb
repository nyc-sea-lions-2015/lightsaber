require_relative '../spec_helper'

describe 'Sea Lions Controller' do
  it 'should get the / route' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include("Helllloo there!")
  end


end
