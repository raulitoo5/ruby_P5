Rails.application.routes.draw do
  resources :bebidas
  resources :pedidos
  resources :linea_pedidos
  resources :clientes
  resources :refrescos
  resources :zumos
  resources :alcohols

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :bebidas
    end
  end

  # Define your other application routes here
  # ...
end

