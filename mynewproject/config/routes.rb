Rails.application.routes.draw do
  get 'usuarios/new'
  #get 'welcome/index'
  root :to => "usuarios#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :usuarios
end
