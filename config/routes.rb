MissileServer::Application.routes.draw do
  resources :comments

  resources :missiles do
    collection do
      get :by_ids ,to: :missiles_by_id
      get :new_missiles
      get :hot_missile
      get 'search/:key' ,to: :search
    end
  end
  resources :tags, only: [:index, :show]
  root 'missiles#index'
end
