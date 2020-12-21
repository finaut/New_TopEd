class FacultiesUniversity < ApplicationRecord
  belongs_to :faculty
  belongs_to :university
end
