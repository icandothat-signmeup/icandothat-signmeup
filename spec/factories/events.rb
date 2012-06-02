# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    title "MyString"
    description "MyString"
    location "MyString"
    start_time "2012-06-02 13:50:38"
    end_time "2012-06-02 13:50:38"
    min_volunteers 1
    max_volunteers 1
    commitment_type "MyString"
  end
end
