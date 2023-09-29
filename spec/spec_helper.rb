require 'rspec'
require_relative '../lib/golondrina'

RSpec::Matchers.define :have_energia do |expected|
  match do |actual|
    actual.energia == expected
  end
end
