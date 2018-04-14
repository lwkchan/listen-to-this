class UsersController < ApplicationController
  def spotify
    @spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    @user_input = request.env['omniauth.params']['playlist']
  end
end
