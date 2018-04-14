class UsersController < ApplicationController
  def spotify
    #<OmniAuth::AuthHash provider="spotify" uid="123545" (in rspec)>
    @spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    p 'spotify user'
    p @spotify_user
  end

end
