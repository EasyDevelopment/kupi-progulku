class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :email, :url, :uid, :gender, :middlename, :name, :phonenumber, :slogan, :surname, :urlphoto, :username

  def self.find_for_vkontakte_oauth access_token
    @user = User.where(:uid => access_token.uid).first
  end
end
