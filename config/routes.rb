Rails.application.routes.draw do
  resources :form_entries, only: [:index, :create, :show, :update, :destroy]
end