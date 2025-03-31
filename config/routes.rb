Rails.application.routes.draw do
  resources :weapon_stats
  resources :weapon_types
  
  root 'home#info'
end
