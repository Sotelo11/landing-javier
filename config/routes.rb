Rails.application.routes.draw do
  

  resources :orden_entregas
  resources :orden_productos
  resources :orden_proyectos
  resources :ordens
  resources :clientes
  resources :productos do

collection do

get :filter

end

end
  resources :categoria
  devise_for :users
  resources :proyectos
  root "landpage#index"

  get 'landpage/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
