class User < ActiveRecord::Base
  devise :database_authenticatable,  :rememberable, :omniauthable,
         :omniauth_providers => [:facebook]

  has_many :articles

  # Для работы OmniAuth
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.name = auth.info.name
      user.password = Devise.friendly_token[0,20]
    end
  end
end
