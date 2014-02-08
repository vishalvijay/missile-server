MissileServer::Application.routes.draw do
  resources :comments

  resources :missiles do
    collection do
      get :by_ids ,to: :missiles_by_id
    end
  end
  resources :tags, only: [:index, :show]
  root 'missiles#index'
end
