Rails.application.routes.draw do
  root 'propostas#index'
  resources :propostas do
    get :autocomplete_cidade_nome, :on => :collection
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
