class Category < ApplicationRecord
    has_many :courses
    validates :name, presence: true
end
