class ProfilesController < InheritedResources::Base
  def new
    auth = session[:auth]

    @profile = current_user.build_profile

    @profile.first_name = auth.info.first_name
    @profile.last_name = auth.info.last_name
    @profile.photo_url = auth.info.image
    @profile.nickname = auth.info.name
    @profile.male = auth.extra.raw_info.sex == 2
  end
end