require 'rails_helper'

RSpec.describe Alarm, type: :model do
  subject { described_class.new }
  context "has no message" do
    it 'should not save' do
      expect(subject).to_not be_valid
    end
  end
end
