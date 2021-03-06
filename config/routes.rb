Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do  
    resources :bookings do
      collection do
        get 'getAvailableTimeslots'
      end 
    end
    resources :facilities
    resources :timeslots
    resources :sports
    devise_for :users
    resources :users
    root 'home#index'
    get 'home/index'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
