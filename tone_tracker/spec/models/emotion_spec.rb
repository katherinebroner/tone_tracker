require 'rails_helper'

# RSpec.describe Emotion, type: :model do
describe Emotion do
  let(:emotion) { Emotion.create(name: Faker::Lorem.word, score: 1.0)}

  describe "#validations" do
    it "is a valid Emotion object" do
      expect(emotion).to be_valid
    end

    let(:invalid_emotion) { Emotion.create(name: nil, score: nil)}
    it "is an invalid Emotion object" do
      expect(invalid_emotion).not_to be_valid
    end

    let(:invalid_emotion) { Emotion.create(name: nil, score: 1.0)}
    it "is an invalid Emotion object" do
      expect(invalid_emotion).not_to be_valid
    end

    let(:invalid_emotion) { Emotion.create(name: Faker::Lorem.word, score: nil)}
    it "is an invalid Emotion object" do
      expect(invalid_emotion).not_to be_valid
    end
  end

end
