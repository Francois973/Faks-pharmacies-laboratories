Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :laboratories, only: :index
      resources :pharmacies, only: :show, param: :city
      resources :orders, only: :create
      resources :sales, only: :create
    end
  end
end
