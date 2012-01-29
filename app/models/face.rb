class Face < ActiveRecord::Base
  belongs_to :user

  validates :date, :presence => true
  validates :status, :presence => true, :numericality => true, :inclusion => { :in => 1..3 }
end
