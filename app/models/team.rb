class Team < ActiveRecord::Base
  validates :name, :presence => true, :length => { :in => 3..64 }, :uniqueness => true
end
