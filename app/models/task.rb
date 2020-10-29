class Task < ApplicationRecord
  belongs_to :user
  has_many :groups
  belongs_to :group, optional: true
end
