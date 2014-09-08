class Course < ActiveRecord::Base
  belongs_to :university
  belongs_to :user
  has_many :notes, dependent: :destroy
  has_many :questions, dependent: :destroy
  validates :name, presence: true
  validates :course_number, presence: true
end
