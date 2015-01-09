Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/features'
  get 'welcome/pricing'
  get 'welcome/blogs'
  get 'welcome/faq'
  get 'welcome/contact'

  resources :invoices
 
  root to: 'welcome#index'
 
end
