class University < ActiveRecord::Base
  has_many :courses, dependent: :destroy
  validates :name, presence: true
  validates :city, presence: true
end
