Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'static_pages#root'

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create]
    resource :session, only: [:create, :destroy]
    resources :shows, only: [:index, :show]
    resources :reviews, only: [:index, :create, :edit, :show, :update, :destroy]
    resources :shows_to_see, only: [:create, :destroy]
  end

end
