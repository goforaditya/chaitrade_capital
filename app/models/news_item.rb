class NewsItem < ApplicationRecord
  validates :headline, :url, presence: true
end
