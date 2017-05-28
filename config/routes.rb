Rails.application.routes.draw do
  resources :propostas do
    get :autocomplete_cidade_nome, :on => :collection
  end
  resources :proposta
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
