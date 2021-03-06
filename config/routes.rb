Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations'}
  resources :users, only: [:show] do
    resources :items, only: [:create, :destroy]
  end
  get 'about' => 'welcome#about'
  get 'blocitoff' => 'welcome#index'

  devise_scope :user do
    authenticated :user do
      root 'welcome#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenitcated_root
    end
  end
end

# defaults: { format: 'js' },
