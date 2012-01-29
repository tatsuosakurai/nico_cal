require 'spec_helper'

describe Team do
  describe 'validate' do
    it { should validate_presence_of :name }
    it { should ensure_inclusion_of(:name).in_range(3..64) }
  end
end
