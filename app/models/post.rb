class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :comment
  has_many :partials
  acts_as_votable 
end
