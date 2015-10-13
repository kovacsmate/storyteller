class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :partials
  acts_as_votable
end
