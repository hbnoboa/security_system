Rails.application.routes.draw do
  resources :occurrences
  
  devise_for :profiles, controllers: {
    registrations: 'profiles/registrations',
    sessions: 'profiles/sessions',
  }

  namespace :api do
    namespace :v1 do
      devise_for :profiles, controllers: { 
        sessions: 'api/v1/sessions',
        registrations: 'api/v1/registrations',
      }
    end
  end

  get 'home', to: 'home#index'
  root 'home#index'
end
