class Teacher < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :title, presence: true, length: { in: 5..150 }
  validates :description, presence: true, length: { in: 150..300 }
  validates :activity, presence: true
  validates :language, presence: true
  validates :location, presence: true
  validates :price, numericality: true
  validates :duration, numericality: true
end
