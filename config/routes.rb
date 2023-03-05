Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :laboratories, only: :index
      resources :pharmacies, only: :show, param: :city
      resources :orders, only: :create
      resources :sales, only: :create
      resources :products, only: :show
      get '/classment-city/:id', to: 'laboratories#city_classment'
      get '/classment-pharmacy/:id', to: 'laboratories#pharmacy_classment'
    end
  end
end
