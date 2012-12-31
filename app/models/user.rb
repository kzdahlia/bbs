class User < ActiveRecord::Base
  validates_presence_of :name
  has_many :boards
  has_many :posts
  has_many :replies
  belongs_to :rank
  accepts_nested_attributes_for :boards
end
