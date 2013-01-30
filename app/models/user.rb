class User < ActiveRecord::Base
  attr_accessible :email, :gender, :middlename, :name, :nickname, :phonenumber, :provider, :slogan, :surname, :urlphoto, :urlprofile, :username
end
