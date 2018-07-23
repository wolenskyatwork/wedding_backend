Rails.application.routes.draw do
  resource :home, :only => [:show, :index]

  root to: "home#index"
end
