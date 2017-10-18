Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'
  mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :chat_rooms, only: [ :show, :index] do
    resources :posts, only: [:index, :show, :create, :new, :delete] do
      member do
        put :like, to: "posts#like"
        put :unlike, to: "posts#unlike"
      end

      resources :messages, only: [:create, :new, :show]
      end
    end

  resources :articles, only: [ :index, :show] do
    resources :comments, only: [:show, :create, :new, :delete]
  end

  resources :types, only: [ :index ] do
    resources :products, only: [ :index, :show]
  end

  resources :users, only: [ :show, :edit, :update] do
    resources :babies, only: [:edit, :update, :create, :new]
  end

end
