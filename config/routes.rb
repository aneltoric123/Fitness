Rails.application.routes.draw do
  devise_for :users
  
  get "up" => "rails/health#show", as: :rails_health_check


  # Set the root to the login page
  devise_scope :user do
    root to: "devise/sessions#new"
  end
end
