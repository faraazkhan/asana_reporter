# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    project_id 1
    asana_id 1
    name "MyString"
  end
end
