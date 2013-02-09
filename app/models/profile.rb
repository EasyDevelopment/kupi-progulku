class Profile < ActiveRecord::Base
  belongs_to :user
  attr_accessible :email, :first_name, :last_name, :male, :middle_name, :nickname, :phone, :photo_url, :slogan
end
