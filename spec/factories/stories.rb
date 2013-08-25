# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :story do
    asana_id 1
    task_id 1
    section_event false
    name "MyString"
    performed_by_id 1
    performed_at "2013-08-25 13:18:04"
    original_section_name "MyString"
    final_section_name "MyString"
  end
end
