Rails.application.routes.draw do
  resources :est_du_types
  resources :intervients
  resources :intervenants
  resources :responsable_etablissements
  resources :interventions
  resources :parametrages
  resources :etablissements
  resources :metiers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
