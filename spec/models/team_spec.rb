require 'spec_helper'

describe Team do
  describe 'validate' do
    it { should validate_presence_of :name }
    it { should ensure_length_of(:name).is_at_least(3).is_at_most(64) }
  end
end
