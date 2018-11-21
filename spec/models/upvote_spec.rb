require 'rails_helper'

RSpec.describe Upvote, type: :model do
  subject { described_class.new }
  context "has no alarm id" do
    it 'should not save' do
      expect(subject).to_not be_valid
    end
  end
end
