ENV['APP_ENV'] = 'test'

require 'rspec'
require 'rack/test'

RSpec.describe User, type: :model do
  describe 'total class number' do
    let!(:user) { User.create(name: 'rubens', password: 'rubens123') }

    it { expect(User.count).to eq(1) }

    it { expect(user.name).to eq(User.find(user.id).name) }
  end
end