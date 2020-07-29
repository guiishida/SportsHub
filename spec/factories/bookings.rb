FactoryBot.define do
  factory :booking do
    date { "2020-05-26" }
    status { "MyString" }
    sport { nil }
    facility { nil }
    user { nil }
    timeslot { nil }
  end
end
