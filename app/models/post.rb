class Post < ActiveRecord::Base
  belongs_to :board
  belongs_to :user
  has_many :replies
end
