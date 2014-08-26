class University < ActiveRecord::Base
  has_many :courses
  validates :name, presence: true
  validates :city, presence: true
end
