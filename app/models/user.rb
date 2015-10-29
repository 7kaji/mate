class User < ActiveRecord::Base
  has_many :members
  has_many :clubs, through: :members
end
