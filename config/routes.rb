Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # Define your customer routes
  resources :customers, only: [:index] do
    collection do
      get 'alphabetized'
      get 'missing_email'
    end
  end

  # Remove any duplicate root route and only keep this:
  root "customers#index"

end
