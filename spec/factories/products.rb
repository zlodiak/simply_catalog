FactoryGirl.define do
  factory :product do
    association :color
    title Faker::Name.title
    description Faker::Lorem.paragraph(7)
    price Faker::Number.decimal(2)
    weight Faker::Number.number(3)
    is_catalog nil

    trait :red_color do
      association :color, factory: :red_color
    end

    trait :blue_color do
      association :color, factory: :blue_color
    end

    trait :green_color do
      association :color, factory: :green_color
    end

    trait :yellow_color do
      association :color, factory: :yellow_color
    end            

  end

end
