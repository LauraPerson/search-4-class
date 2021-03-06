class Course < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  belongs_to :category
  validates :max_bookings, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :title, presence: true
  validates :schedule_date, presence: true
  validates :duration, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :description, presence: true
  validates :price, presence: :true, numericality: { only_integer: true, greater_than: 0 }
  validate :schedule_date_cant_be_past
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def schedule_date_cant_be_past
    if schedule_date.present? && schedule_date < Date.today
      errors.add(:schedule_date, "can't be in the past")
    end
  end

  def self.search_by_title(search)
    if search
      Course.where("title ILIKE ?", "%#{search}%")
    end
  end

  def self.search_by_category(id_category)
    Course.where(category_id: id_category)
  end
end
