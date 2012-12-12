class User < ActiveRecord::Base
  validates_presence_of :name
  has_many :board
  belongs_to :rank
end
