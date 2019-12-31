Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :users, only: [:create, :destroy] do
  #   resources :investments, only: [:create, :index, :show, :update, :destroy]
  # end
  # resources :investments
  get 'investment/new', to: 'investments#new', as: 'new_investment'
  get 'investments', to:'investments#index', as: 'investments_index'
  get 'investments/:id', to: 'investment#show', as: 'investment_show'
  get 'investments/:id', to: 'investment#update', as: 'investment_update'
  get 'investments/:id', to: 'investment#edit', as: 'investment_edit'


end
