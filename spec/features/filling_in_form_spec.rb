require 'rails_helper'

feature 'Filling in form' do
  it 'allows user to fill in a form and generate a new playlist' do
    visit('/')
    click_on('Sign in with Spotify')
    fill_in('', with: 'Jazz')
    click_on('Submit')
    expect(page).to have_content('Here\'s what we recommend')
  end
end
