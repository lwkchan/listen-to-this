require 'rails_helper'

feature 'Generating playlist' do
  it 'allows user to fill in a form and generate a playlist' do
    visit('/')
    fill_in('playlist', with: 'Jazz')
    click_on('Generate')
    find_link('See your playlist on Spotify').visible?
  end

  it 'confirms to the user what word they filled the form in with' do
    visit('/')
    fill_in('playlist', with: 'Jazz')
    click_on('Generate')
    expect(page).to have_content('You picked Jazz')
  end
end
