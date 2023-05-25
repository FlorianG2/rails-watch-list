Rails.application.routes.draw do
  root to: 'pages#home'
  resources :lists, only: %i[index new create show destroy] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: %i[destroy]
end
