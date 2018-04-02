require 'rails_helper'

feature 'visiting homepage' do
  it 'Allows the user to log on with Spotify' do
    visit('/')
    click_on('Sign in with Spotify')
    # expect(page).to have_content("Type in an artist, genre or mood and we'll do the rest")
  end
end
