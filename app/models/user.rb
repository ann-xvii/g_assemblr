class User < ActiveRecord::Base
	mount_uploader :image, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:linkedin]

  validates :email, presence: true

  
  has_one :linkedin_datum, :dependent => :destroy
  has_one :github_datum, :dependent => :destroy
  

  linkedin_options = {
  scope: 'r_fullprofile r_emailaddress',
  fields: ['id', 'email-address', 'first-name', 'last-name', 'headline', 'location', 'industry', 'picture-url', 'public-profile-url', "picture-urls::(original)"]
}

  def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
      end
  end

  li_client = LinkedIn::Client.new


end
