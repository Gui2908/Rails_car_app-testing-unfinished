Rails.application.routes.draw do
  get 'cars/index'
  get 'cars/accelerate'
  get 'cars/status'
  get 'cars/new_car'
  get 'cars/brake' => 'cars#brake'
  get '/' => 'cars#index'
  get 'cars/create' => 'cars#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
