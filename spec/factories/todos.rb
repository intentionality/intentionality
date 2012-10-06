# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :todo do
    name "MyString"
    start "2012-10-05 21:36:34"
    duration ""
    complete false
  end
end
