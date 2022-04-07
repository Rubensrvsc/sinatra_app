RSpec.describe User, type: :model do
  describe 'total class number' do
    User.create(name: 'rubens', password: 'rubens123')
    
    it { expect(User.count).to eq(1) }
  end
end