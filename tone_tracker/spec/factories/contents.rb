FactoryGirl.define do
  factory :content do |f|
    f.body { Faker::Lorem.paragraph }
  end
end