class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :teacher
  validates :date, presence: true
  validates :time, presence: true
  validates :price, presence: true, numericality: true
  validates :duration, presence: true, numericality: true
  validates :state, presence: true, inclusion: { in: ["pending", "accepted", "rejected"]}
end
