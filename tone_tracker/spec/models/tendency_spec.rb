require 'rails_helper'

# RSpec.describe Tendency, type: :model do
describe Tendency do
  let(:tendency) { Tendency.create(name: Faker::Lorem.word, score: 1.0)}

  describe "#validations" do
    it "is a valid Tendency object" do
      expect(tendency).to be_valid
    end

    let(:invalid_tendency) { Tendency.create(name: nil, score: nil)}
    it "is an invalid Tendency object" do
      expect(invalid_tendency).not_to be_valid
    end

    let(:invalid_tendency) { Tendency.create(name: nil, score: 1.0)}
    it "is an invalid Tendency object" do
      expect(invalid_tendency).not_to be_valid
    end

    let(:invalid_tendency) { Tendency.create(name: Faker::Lorem.word, score: nil)}
    it "is an invalid Tendency object" do
      expect(invalid_tendency).not_to be_valid
    end
  end
end
