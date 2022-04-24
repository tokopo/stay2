class Room < ApplicationRecord
  has_one_attached :image
  has_many :checks
  validates :title, presence: true
end
