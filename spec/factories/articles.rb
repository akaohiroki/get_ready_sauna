FactoryBot.define do
  factory :article do
    name { 'サウナ' }
    prefecture_id { 2 }
    bath_type_id { 2 }
    temperature_id { 2 }
    breadth_id { 2 }
    water_bath_id { 2 }
    break_space_id { 2 }
    budget_id { 2 }
    number_of_visit_id { 2 }
    evaluation_id { 2 }
    general_comment { 'サウナの総評' }
    association :user
    after(:build) do |article|
      article.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
