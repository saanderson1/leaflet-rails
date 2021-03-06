require 'rails_helper'

RSpec.describe State, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :lat }
    it { should validate_presence_of :long }
    it { should validate_presence_of :zoom }
    it { should validate_uniqueness_of :name }
  end
end

