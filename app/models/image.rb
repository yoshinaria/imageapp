class Image < ActiveRecord::Base
  validates :name, presence: true
end
