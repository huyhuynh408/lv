class Victory < ActiveRecord::Base
  belongs_to :user
  has_many   :votes
  has_many   :taggings
  has_many   :tags, through: :taggings
end
