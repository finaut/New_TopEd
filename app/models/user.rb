class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, :last_name, :mobile_number, :country, presence: true
  validates :first_name, :last_name, length: { in: 3..25}
  has_many :orders
end
