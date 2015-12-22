describe User do
  before(:each) { @user = User.new(email: 'user@example.com') }
  describe 'attributes' do
    it {is_expected.to respond_to :email}
  end
  
  it 'returns an email' do
    expect(@user.email).to eq 'user@example.com'
  end
end
