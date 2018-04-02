require 'spec_helper'

feature 'visiting homepage' do
  it 'Allows the user to log on with Spotify' do
    visit('/')
    click_on('Sign in with Spotify')
    expect(page.current_url).to start_with('https://accounts.spotify.com/en/authorize')
  end
end
