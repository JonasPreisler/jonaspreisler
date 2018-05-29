Rails.application.routes.draw do
  resources :services
  resources :projects
  root 'projects#index', to: 'projects/index'
  get 'pages/contact', to: 'pages#contact'
end
