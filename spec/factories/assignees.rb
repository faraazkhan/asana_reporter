# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :assignee do
    asana_id 1
    name "MyString"
    email "MyString"
  end
end
