Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.

  namespace :api do
  	namespace :v1 do
  		resources :leads
  	end
  end

  root to: 'home#index'
  get '*path', to: 'home#index'
end
