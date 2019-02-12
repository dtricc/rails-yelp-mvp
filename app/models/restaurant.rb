class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  # validates :name, uniqueness: true, presence: true
  validates :name, :address, :phone_number, :category, presence: true
  validates :category, inclusion:
  { in: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
end
