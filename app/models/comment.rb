class Comment < ApplicationRecord
  belongs_to :university
  validates :description, :name, presence: true
  validates :name, length: { in: 3..20}
  validates :description, length: { in: 10..255}
end
