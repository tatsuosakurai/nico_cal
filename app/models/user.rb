class User < ActiveRecord::Base
  validates :name, :presence => true, :inclusion => { :in => 3..64 }
end
