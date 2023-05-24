class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  ALLOWED_CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ALLOWED_CATEGORIES}

end
