Rails.application.routes.draw do


  root to:             'static_pages#home'
  get  'o-udruzi'  =>  'static_pages#about',    as: :about
  get  'statut'    =>  'static_pages#statut',   as: :statut
  get  'kontakt'   =>  'static_pages#contact',  as: :contact

  get  'vijesti'   =>  'posts#index', as: :posts
  

  devise_for :users

  devise_scope :user do
    
    get   'edit',         to: 'devise/registrations#edit',  as: :edit
    get   'registracija', to: 'devise/registrations#new',   as: :register
    get   'prijava' ,     to: 'devise/sessions#new',        as: :login
    get   'odjava' ,      to: 'devise/sessions#destroy',    as: :logout
    
    get   'korisnici',        to: 'users#index',                as: :users
    get   'korisnici/ukloni', to: 'users#delete',           as: :user_delete
    post  'korisnici/unisti', to: 'users#destroy',          as: :user_destroy  
    get  'korisnici/pregled', to: 'users#show',            as: :user_show     
  
  end

end
