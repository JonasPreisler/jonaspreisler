Rails.application.routes.draw do
  resources :misschilis
  resources :link_to_shortens
  resources :urls
  resources :services
  resources :projects
  root 'projects#index', to: 'projects/index'
  get 'pages/contact', to: 'pages#contact'
  get 'pages/chat', to: 'pages#chat'
  get '/ejendom', to: 'pages#ejendom'
  resources :urls, only: [:new, :create]
  get '/bitly', to: "urls#new"
  namespace 'api', defaults: { format: :json } do
    resources :link_to_shortens
    resources :urls
  end
  post "link_to_shorten/:id" => "urls#new", :via => [ :post]

end
