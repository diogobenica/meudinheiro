FactoryGirl.define do
  factory :transaction do
    description "Vacation"
    transaction_date "2013-04-23"
    user
  end
end
