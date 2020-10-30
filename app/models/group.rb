class Group < ApplicationRecord
  belongs_to :user
  has_many :tasks
  belongs_to :task
  has_one_attached :icon
  validates :name, presence: true, length: { minimum: 3 }
end
