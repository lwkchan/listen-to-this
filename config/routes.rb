Rails.application.routes.draw do
  get 'playlists/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get '/auth/spotify/callback'
end
