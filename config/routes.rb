Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :chat_rooms, only: [ :show, :index] do
    resources :posts, only: [:index, :show, :create, :new, :delete] do
      resources :messages, only: [:create, :new, :show]
      end
    end

  resources :articles, only: [ :index, :show] do
    resources :comments, only: [:show, :create, :new, :delete]
  end

  resources :products, only: [ :index, :show]
  resources :users, only: [ :show, :edit, :update] do
    resources :babies, only: [:edit, :update]
  end

end
