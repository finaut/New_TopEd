Rails.application.routes.draw do
  get 'users/show'
  get 'home/company'
  get 'home/ukrain'
  get 'home/required_documents'
  get 'home/service'

  resources :universities do
    resources :comments
  end
  devise_for :users do
    resources  :orders
  end
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
