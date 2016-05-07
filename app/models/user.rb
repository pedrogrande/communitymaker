class User < ActiveRecord::Base
  rolify
  has_one :profile
  has_many :posts
  has_many :photos
  has_many :events
  has_many :memberships
  has_many :groups, through: :memberships

  acts_as_voter
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

 def self.from_omniauth(auth)  
   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
     user.provider = auth.provider
     user.uid = auth.uid
     user.email = auth.info.email
     user.password = Devise.friendly_token[0,20]
   end
 end

end
