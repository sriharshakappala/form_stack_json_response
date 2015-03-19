Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  post 'get_data' => 'responses#get_data'
  resources :responses
  root :to => "responses#index"
end
