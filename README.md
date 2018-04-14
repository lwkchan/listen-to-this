# Listen to This

Music recommendation app in Ruby on Rails. Links to the Spotify API and automatically generates a new playlist in your Spotify account.

## How to use

1. Clone this repo
2. Run ```rails server``` and follow the instructions

## Key learnings

* How to use API wrappers in Rails. In this case, using the rSpotify gem.
* How to test by mocking Omniauth credentials
  - However, I feel that I can learn more on testing with APIs, as I ran into issues when feature testing with Capybara. This was because I couldn't authorize the creation of a new playlist in a mock account.
