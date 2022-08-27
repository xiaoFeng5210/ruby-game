require 'rails_helper'

RSpec.describe User, type: :model do
  it '有 email' do
    user = User.new email: 'm15105215616@163.com'
    expect(user.email).to eq 'm15105215616@163.com'
  end
end
