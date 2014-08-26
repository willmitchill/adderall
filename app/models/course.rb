class Course < ActiveRecord::Base
  belongs_to :university
  belongs_to :user
  has_many :answers
  has_many :notes
  has_many :questions
end
