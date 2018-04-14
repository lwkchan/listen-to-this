require 'rails_helper'

feature 'Filling in form' do

  it 'welcomes to user to the page' do
    visit('/')
    click_on('Sign in with Spotify')
    expect(page).to have_content('Welcome')
  end

  it 'allows user to fill in a form and generate a new playlist' do
    visit('/')
    click_on('Sign in with Spotify')
    fill_in('playlist', with: 'Jazz')
    click_on('Generate')
    expect(page).to have_content('Here\'s what we recommend')
  end
end
