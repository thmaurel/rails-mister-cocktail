Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'cocktails', to: 'cocktails#index'
  get 'cocktails/new', to: 'cocktails#new'
  post 'cocktails', to: 'cocktails#create'
  get 'cocktails/:id', to: 'cocktails#show', as: 'cocktail'

  get 'cocktails/:cocktail_id/doses/new', to: 'doses#new', as: 'new_cocktail_dose'
  post 'cocktails/:cocktail_id/doses', to: 'doses#create', as: 'cocktail_doses'

  delete 'cocktails/:cocktail_id/doses/:id', to: 'doses#destroy', as: 'dose_destroy'
end
