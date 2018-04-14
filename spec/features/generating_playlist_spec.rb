require 'rails_helper'

feature 'Generating playlist' do
  it 'allows user to fill in a form and generate a playlist' do
    visit('/')
    fill_in('playlist', with: 'Jazz')
    click_on('Generate')
    expect(page).to have_content('Here\'s what we recommend')
  end
end