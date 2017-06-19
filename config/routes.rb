Rails.application.routes.draw do
  devise_for :users
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
