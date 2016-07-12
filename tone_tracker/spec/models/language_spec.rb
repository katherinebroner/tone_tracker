require 'rails_helper'

# RSpec.describe Language, type: :model do
describe Language do
  let(:language) { Language.create(name: Faker::Lorem.word, score: 1.0)}

  describe "#validations" do
    it "is a valid Language object" do
      expect(language).to be_valid
    end

    let(:invalid_language) { Language.create(name: nil, score: nil)}
    it "is an invalid Language object" do
      expect(invalid_language).not_to be_valid
    end

    let(:invalid_language) { Language.create( name: nil, score: 1.0)}
    it "is an invalid Language object" do
      expect(invalid_language).not_to be_valid
    end

    let(:invalid_language) { Language.create( name: Faker::Lorem.word, score: nil)}
    it "is an invalid Language object" do
      expect(invalid_language).not_to be_valid
    end
  end

end
