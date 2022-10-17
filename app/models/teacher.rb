class Teacher < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :title, presence: true, length: { in: 5..150 }
  validates :description, presence: true, length: { in: 50..300 }
  validates :activity, presence: true
  validates :language, presence: true
  validates :location, presence: true
  validates :price, numericality: true, presence: true
  validates :duration, numericality: true, presence: true
  validates :category, presence: true
end
