require 'spec_helper'

describe Face do
  describe 'relationship' do
    it { should belong_to :user }
  end

  describe 'validation' do
    [:status, :date].each do |column|
      it { should validate_presence_of column }
    end
    it { should validate_numericality_of :status }
    it { should ensure_inclusion_of(:status).in_range(1..3) }
  end
end
