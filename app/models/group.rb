class Group < ApplicationRecord
  belongs_to :user
  has_many :tasks
  has_one_attached :icon
end
