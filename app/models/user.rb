class User < ActiveRecord::Base
  has_many :faces
  validates :name, :presence => true, :length => { :in => 3..64 }, :uniqueness => true
end
