Rails.application.routes.draw do
#  get 'bookmarks/create'
#  get 'bookmarks/destroy'
#  get 'lists/index'
#  get 'bookmarks/new'
#  get 'lists/create'
#  get 'lists/show'
#  get 'lists/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
 # # Can be used by load balancers and uptime monitors to verify that the app is live.
 # get "up" => "rails/health#show", as: :rails_health_check
#
 # get 'lists', to: 'lists#index', as: 'lists'
 # # Route pour voir mes listes
 # get 'lists/:id', to: 'lists#show', as: 'list'
 # # Route pour voir les details d'une liste.
 # get 'lists/new', to: 'lists#new', as: 'new_list'
 # # Route pour montrer le formulaire qui crééra la nouvelle liste
 # post 'lists', to: 'lists#create'
  # Route pour créer une nouvelle liste
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: :destroy
  # routes pour les bookmarks !
end
# routes pour les bookmarks !
