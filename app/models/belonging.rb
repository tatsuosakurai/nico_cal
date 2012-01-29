class Belonging < ActiveRecord::Base
  belongs_to :user
  belongs_to :team

  validates :admin, :inclusion => { :in => [true, false] }
end
