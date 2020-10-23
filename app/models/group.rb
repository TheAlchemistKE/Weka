class Group < ApplicationRecord
  has_and_belongs_to_many :tasks
  belongs_to :user
end
