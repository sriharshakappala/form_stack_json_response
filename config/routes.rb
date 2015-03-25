Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  post 'get_data' => 'responses#get_data'
  get 'submit_docs' => 'responses#submit_docs'
  resources :responses
  root :to => "responses#index"
end
