# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :commitment do
    user_id 1
    event_id 1
    status "MyString"
  end
end
