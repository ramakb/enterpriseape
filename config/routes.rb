Rails.application.routes.draw do
  

  resources :employees

  resources :companies do
    collection { post :import }
  end

  devise_for :users
  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/features'
  get 'welcome/pricing'
  get 'welcome/blogs'
  get 'welcome/faq'
  get 'welcome/contact'

  resources :invoices do
    resources :purchases, except: [:index], controller: 'invoices/purchases'
  end
 
  root to: 'welcome#index'
 
end
