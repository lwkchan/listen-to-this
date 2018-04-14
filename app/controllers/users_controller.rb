class UsersController < ApplicationController
  def spotify
    @spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    @user_input = request.env['omniauth.params']['playlist']
    seed_track = RSpotify::Track.search(@user_input).first
    seed_artists_ids = @spotify_user.top_artists(limit: 10).map(&:id)
    @tracks = RSpotify::Recommendations.generate(limit: 20, seed_tracks: [seed_track.id], seed_artists: [seed_artists_ids.first]).tracks
    @playlist = @spotify_user.create_playlist!("Listen to this: #{@user_input}")
    @playlist.add_tracks!(@tracks)
  end
end
