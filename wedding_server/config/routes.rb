Rails.application.routes.draw do
  devise_for :admins

  resource :home, :only => [:show, :index]
  
  resources :rsvps, :only => [:create, :index]

  root to: "home#index"
end
