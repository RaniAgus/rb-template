require 'rspec'
require_relative '../lib/golondrina'

RSpec::Matchers.define :have_energia do |expected|
  match do |actual|
    actual.energia == expected
  end

  failure_message do |actual|
    "expected that:\n#{actual.energia}\n\nwould be equal to:\n#{expected}"
  end
end
