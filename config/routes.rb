Rails.application.routes.draw do
  devise_for :users
  get 'about' => 'welcom#about'
  get 'blocitoff' => 'welcome#indes'
  root 'welcome#index'
end
