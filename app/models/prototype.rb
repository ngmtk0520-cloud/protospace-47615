class Prototype < ApplicationRecord
  belongs_to :user
  validates :title, :catch_copy, :concept, :image, presence: true
  has_one_attached :image
  has_many :comments, dependent: :destroy
end
