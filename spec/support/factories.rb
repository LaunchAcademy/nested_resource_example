FactoryGirl.define do
  factory :product do
    sequence :name do |num|
      "product-#{num}"
    end
    association :category
  end

  factory :category do
    sequence :name do |num|
      "category-#{num}"
    end
  end
end
