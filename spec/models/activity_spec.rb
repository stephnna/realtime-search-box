require 'rails_helper'

RSpec.describe Activity, type: :model do
  describe 'validations' do
    subject { Activity.new(name: 'who are you') }

    it 'should be valid' do
      expect(subject).to be_valid
    end

    it 'name should be present' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'should not be too short' do
      subject.name = 'ab'
      expect(subject).to_not be_valid
    end

    it 'should not be too long' do
      subject.name = 'a' * 60
      expect(subject).to_not be_valid
    end
  end
end
