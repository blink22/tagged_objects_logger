require 'objects/test_object'
FactoryBot.define do
  factory :test_object do
    sequence(:id, &:to_s)
    sequence(:name) { |n| "Object #{n}" }
    initialize_with { new(attributes) }
  end
end
