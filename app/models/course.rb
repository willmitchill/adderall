class Course < ActiveRecord::Base
  belongs_to :university
  belongs_to :user
  has_many :notes
  has_many :questions
  validates :name, presence: true
  validates :course_number, presence: true
end
