Rails.application.routes.draw do
  
  root                 'static_pages#home'
  get  'o-udruzi'  =>  'static_pages#about'
  get  'statut'    =>  'static_pages#statut'
  get  'kontakt'   =>  'static_pages#contact'

end
