require 'spec_helper'

describe Belonging do
  describe 'relationship' do
    it { should belong_to :user }
    it { should belong_to :team }
  end

  describe 'validation' do
    it { should allow_value(true).for(:admin) }
    it { should allow_value(false).for(:admin) }
  end
end
