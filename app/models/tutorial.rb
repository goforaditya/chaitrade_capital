class Tutorial < ApplicationRecord
  validates :title, :content, presence: true
  has_many  :user_progresses, dependent: :destroy

  def to_param
    slug
  end
end
