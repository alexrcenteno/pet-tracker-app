Rails.application.routes.draw do
  resources :dogs
  get "/signup" => "users#new"
  post "/users" => "users#create"
end
