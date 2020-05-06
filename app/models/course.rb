class Course < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  belongs_to :category
  validates :title, presence: true
  validates :schedule_date, presence: true
  validates :duration, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :price, presence: :true, numericality: { greater_than: 0 }
  validate :schedule_date_cant_be_past

  def schedule_date_cant_be_past
    if schedule_date.present? && schedule_date < Date.today
      errors.add(:schedule_date, "can't be in the past")
    end
  end
end
