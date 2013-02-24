class SessionsController < ApplicationController
  def create
    auth = env['omniauth.auth']
    user = User.from_omniauth(auth)
    session[:user_id] = user.id
    if user.profile.present?
      redirect_to root_url, notice: 'Signed in!'
    else
      session[:auth] = auth
      redirect_to new_profile_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Signed out!'
  end
end