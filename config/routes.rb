Rails.application.routes.draw do
  get 'weather/home', to: 'weather#home'

  get 'weather/index', to: 'weather#index'

  root 'weather#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
