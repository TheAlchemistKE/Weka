class Task < ApplicationRecord
  belongs_to :user
  has_many :groups
  belongs_to :group, optional: true
  scope :tasks_with_group, -> { where.not(group_id: nil).includes(:group) }
  scope :tasks_with_no_group, -> { where(group_id: nil) }
end
