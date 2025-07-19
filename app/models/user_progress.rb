class UserProgress < ApplicationRecord
  belongs_to :user
  belongs_to :tutorial

  scope :completed, -> { where(completed: true) }
end
