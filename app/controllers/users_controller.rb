class UsersController < ApplicationController
  def spotify
    @spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    @user_input = request.env['omniauth.params']['playlist']
    seed_track1 = RSpotify::Track.search(@user_input).first
    @tracks = RSpotify::Recommendations.generate(limit: 20, seed_tracks: [seed_track1.id]).tracks
    @playlist = @spotify_user.create_playlist!("Listen to this: #{@user_input}")
    @playlist.add_tracks!(@tracks)
  end
end
