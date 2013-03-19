FactoryGirl.define do
  
  factory :article do
    title     { Faker::Base.words(num = 4)}
    content   { Faker::Base.paragraph }
  end

end
