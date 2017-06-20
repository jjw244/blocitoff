Rails.application.routes.draw do
  get 'items/create'

  devise_for :users, :controllers => {registrations: 'registrations'}
  resources :users, only: [:show] do
    resource :items, only: [:create]
  end
  get 'about' => 'welcome#about'
  get 'blocitoff' => 'welcome#index'
  get 'users/show'

  devise_scope :user do
    authenticated :user do
      root 'welcome#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenitcated_root
    end
  end
end
