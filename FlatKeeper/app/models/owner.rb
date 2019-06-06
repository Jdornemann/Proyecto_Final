class Owner < ApplicationRecord
  has_many :cleaning_requests
  has_many :flat_details
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]
 
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |owner|
      owner.email = auth.info.email
      owner.password = Devise.friendly_token[0,20]
      owner.provider = auth.provider
      owner.uid = auth.uid
      owner.name = auth.info.name
    end
  end

end
