Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :users, only: [:create, :destroy] do
  #   resources :investments, only: [:create, :index, :show, :update, :destroy]
  # end
  # resources :investments
  get '/investments/new', to: 'investments#new', as: 'new_investment'
  get '/investments', to:'investments#index', as: 'investments_index'
  get '/investments/:id', to: 'investments#show', as: 'investment_show'
  post '/investments', to: 'investments#create'
  patch '/investments/:id', to: 'investments#update'
  put '/investments/:id', to: 'investments#update'
  put '/investments/:id/calculate', to: 'investments#calculate', as: 'investment_calculate'
  # post '/users'
 resource :session, only: [:new, :create, :destroy]
 resources :users, only: [:new, :create, :show, :update]

end
