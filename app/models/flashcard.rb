class Flashcard < ActiveRecord::Base
  belongs_to :course
  belongs_to :user
  belongs_to :cardset
end
