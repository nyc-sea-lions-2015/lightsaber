require 'spec_helper'

describe 'Index Controller' do
  index_test = 'Sealions'

  it 'Should get the / route' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include(index_text)
  end
end
