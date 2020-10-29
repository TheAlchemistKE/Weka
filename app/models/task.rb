class Task < ApplicationRecord
  belongs_to :user
  has_many :groups
  belongs_to :group, optional: true
  scope :tasks_with_group, -> { where.not(group_id: nil).includes(:group) }
  scope :tasks_with_no_group, -> { where(group_id: nil) }
  has_one_attached :icon
  validates :name, presence: true, length: { minimum: 3 }
  validates :amount, presence: true
end
