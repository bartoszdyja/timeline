FactoryGirl.define do
  factory :article do
    title 'MyString'
    content 'MyText'
    category
    user
    completed_on Time.zone.today
  end
end
