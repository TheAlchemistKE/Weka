class Task < ApplicationRecord
  belongs_to :user
  has_many :groups

  validates :name, presence: true, length: { maximum: 50, too_long: '%{count} characters is the maximum allowed' }
  # validates_associated :groups
end
