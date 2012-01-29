require 'spec_helper'

describe Team do
  before do
    Factory :team
  end

  describe 'validation' do
    it { should validate_presence_of :name }
    it { should ensure_length_of(:name).is_at_least(3).is_at_most(64) }
    it { should validate_uniqueness_of :name }
  end
end
