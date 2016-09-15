Rails.application.routes.draw do

  
  root to:             'static_pages#home'

  get  'o-udruzi'  =>  'static_pages#about',    as: :about
  get  'statut'    =>  'static_pages#statut',   as: :statut
  get  'kontakt'   =>  'contacts#new',  as: :contact
  get  'vijesti'   =>  'static_pages#posts',    as: :news
  get  'vijest/:id'=>  'static_pages#single_post'
 
  resources :contacts, only: [:new, :create]

  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks", :registrations => "users/registrations" }

  devise_scope :user do
    get   'uredi',        to: 'users/registrations#edit',  as: :edit
    get   'registracija', to: 'users/registrations#new',   as: :register
    get   'prijava' ,     to: 'users/sessions#new',        as: :login
    get   'odjava' ,      to: 'users/sessions#destroy',    as: :logout
    get   'prikaz',       to: 'users#show_profile',        as: :show_profile
  end

  devise_for :admins, :controllers => {:sessions => "admins_sessions"}  
  
  devise_scope :admin do
    
    get   'korisnici',        to: 'admins#index',          as: :admin_root
    get   'korisnik/ukloni',  to: 'admins#delete',         as: :admin_delete
    post  'korisnik/unisti',  to: 'admins#destroy',        as: :admin_destroy  
    get   'korisnik/:id',     to: 'admins#show',           as: :admin_show 

    get   'admin/prijava',    to: 'admins_sessions#new',      as: :admin_login 
    get   'admin/odjava',     to: 'admins_sessions#destroy',  as: :admin_logout 

  end

  get   'vijesti-pregled',      to: 'posts#index',    as: :posts
  get   'vijest-pregled/:id',   to: 'posts#show',     as: :post_show
  get   'vijest-ukloni/:id',    to: 'posts#delete',   as: :post_delete
  get   'vijest-uredi/:id',     to: 'posts#edit',     as: :post_edit
  get   'vijest-nova',          to: 'posts#new',      as: :post_new
  post  'vijest-stvori',        to: 'posts#create',   as: :post_create
  post  'vijest-uredi',         to: 'posts#update',   as: :post_update
  post  'vijest-unisti/:id',    to: 'posts#destroy',  as: :post_destroy

end
