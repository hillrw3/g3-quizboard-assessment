class Question < ActiveRecord::Base
  belongs_to :quiz
  has_many :possible_answers
end
