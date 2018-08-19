Rails.application.routes.draw do
  resource :home, :only => [:show, :index]
  
  resources :rsvp, :only => [:create, :index]

  root to: "home#index"
end
