Rails.application.routes.draw do

  
  root to:             'static_pages#home'

  get  'o-udruzi'  =>  'static_pages#about',    as: :about
  get  'statut'    =>  'static_pages#statut',   as: :statut
  get  'kontakt'   =>  'static_pages#contact',  as: :contact
  get  'vijesti'   =>  'posts#index', as: :posts
  

  devise_for :users 

  devise_scope :user do
    get   'uredi',         to: 'devise/registrations#edit',  as: :edit
    get   'registracija', to: 'devise/registrations#new',   as: :register
    get   'prijava' ,     to: 'devise/sessions#new',        as: :login
    get   'odjava' ,      to: 'devise/sessions#destroy',    as: :logout
    get   'prikaz',       to: 'users#show_profile', as: :show_profile
  end

  devise_for :admins, :controllers => {:sessions => "admins_sessions"}  
  
  devise_scope :admin do
    get   'korisnici',        to: 'admins#index',          as: :admin_root
    get   'korisnik/ukloni',  to: 'admins#delete',         as: :admin_delete
    post  'korisnik/unisti',  to: 'admins#destroy',        as: :admin_destroy  
    get   'korisnik/pregled', to: 'admins#show',           as: :admin_show  
    
    get   'admin/prijava',    to: 'admins_sessions#new',    as: :admin_login 
    get   'admin/odjava',     to: 'admins_sessions#destroy',    as: :admin_logout 
  end



end
