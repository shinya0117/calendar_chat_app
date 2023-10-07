Rails.application.routes.draw do
  root "homes#index"

  get 'calendars/index', to: 'calendars#index'

  
  resources :calendars
end
