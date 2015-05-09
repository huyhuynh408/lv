class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :victories, through: :taggings
end
