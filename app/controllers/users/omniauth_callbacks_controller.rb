class Users::OmniauthCallbacksController < ApplicationController
  def vkontakte
  	user = User.find_for_vkontakte_oauth request.env["omniauth.auth"]
    if user
      sign_in_and_redirect user, :event => :authentication
    else
      session["devise.vkontakte_data"] = request.env["omniauth.auth"]
      redirect_to new_user_path
    end
  end
end
