class Order < ApplicationRecord
  belongs_to :user
  validates :first_name, :last_name, :mobile_number, :country, :faculty, :university, presence: true
end
