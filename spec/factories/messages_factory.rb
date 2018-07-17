require 'objects/message'
FactoryBot.define do
  factory :error_message, class: Message do
    message 'This is My Error Message'
    initialize_with { new(attributes) }
  end

  factory :debug_message, class: Message do
    message 'This is My Debug Message'
    initialize_with { new(attributes) }
  end

  factory :info_message, class: Message do
    message 'This is My Info Message'
    initialize_with { new(attributes) }
  end

  factory :fatal_message, class: Message do
    message 'This is a Fatal error'
    initialize_with { new(attributes) }
  end

  factory :unknown_message, class: Message do
    message 'This is unknown message'
    initialize_with { new(attributes) }
  end

  factory :warn_message, class: Message do
    message 'This is just a warning'
    initialize_with { new(attributes) }
  end

  factory :multiple_lines_message, class: Message do
    message 'This is My\nMultiple Error\nMessage'
    initialize_with { new(attributes) }
  end
end
