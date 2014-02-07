MissileServer::Application.routes.draw do
  resources :comments

  resources :missiles
  resources :tags, only: [:index, :show]
  root 'missiles#index'
end
