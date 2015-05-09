class User < ActiveRecord::Base
  has_many :victories
  has_many :taggings
  has_many :tags, through: :taggings
end
