class Tagging < ActiveRecord::Base
  belongs_to :victory
  belongs_to :tag
end
