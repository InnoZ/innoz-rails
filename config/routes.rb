Rails.application.routes.draw do
  root 'pages#index'

  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact
  get 'imprint', to: 'pages#imprint', as: :imprint
  get 'privacy', to: 'pages#privacy', as: :privacy
end
