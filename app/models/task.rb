class Task < ApplicationRecord
  belongs_to :user
  has_many :groups
  belongs_to :group
  has_one_attached :icon
  validates :name, presence: true, length: { minimum: 3 }
  validates :amount, presence: true
end
