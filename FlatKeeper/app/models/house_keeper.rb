class HouseKeeper < ApplicationRecord
  has_many :cleaningrequests
  has_many :flat_details
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

