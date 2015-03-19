Rails.application.routes.draw do
  post 'get_data' => 'responses#get_data'
  resources :responses
end
