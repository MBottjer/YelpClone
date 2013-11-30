# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review do
    comment "MyText"
    rating 1
    restaurant nil
  end
end
