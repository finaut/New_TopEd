class Faculty < ApplicationRecord
  has_many :faculties_universities
  has_many :universities, through: :faculties_universities
end
