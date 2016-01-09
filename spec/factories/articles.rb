FactoryGirl.define do
  factory :article do
    title 'MyString'
    content 'MyText'
    category { FactoryGirl.build(:category) }
    user { FactoryGirl.create(:user) }
    completed_on Time.zone.today
  end
end
