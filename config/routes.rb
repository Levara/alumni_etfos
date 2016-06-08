Rails.application.routes.draw do


  root to:             'static_pages#home'
  get  'o-udruzi'  =>  'static_pages#about', as: :about
  get  'statut'    =>  'static_pages#statut', as: :statut
  get  'kontakt'   =>  'static_pages#contact', as: :contact
  
  resources :messages, only: [:new, :create]

  devise_for :users

  devise_scope :user do
    get  'edit', to: 'devise/registrations#edit', as: :edit
    get 'registracija', to: 'devise/registrations#new', as: :register
    #post'registracija', to: 'devise/registrations#create'
    get    'prijava' ,  to: 'devise/sessions#new', as: :login
    #post   'prijava' ,  to: 'devise/sessions#create'
    get    'odjava' ,   to: 'devise/sessions#destroy', as: :logout
    #delete 'prijava',   to: 'devise/sessions#destroy'
  end

end
