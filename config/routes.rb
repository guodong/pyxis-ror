Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  jsonapi_resources :cloudwares
  jsonapi_resources :users
  jsonapi_resources :versions
  jsonapi_resources :instances
  jsonapi_resources :hosts
  jsonapi_resources :files
end
