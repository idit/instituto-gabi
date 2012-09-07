Igabi::Application.routes.draw do

  # Admin routes
  namespace :admin do

    resources :users
    resources :posts
    resources :sessions, :only => [:new, :create, :destroy]
    resources :uploads
    resources :partners

    root             :to => "sessions#new"
    match "/logout", :to => "sessions#destroy", :via => :delete
    match "/home",   :to => "static_pages#home"

  end

  root :to => "static_pages#home"
  get  "/instituto_gabi", :to => "static_pages#instituto_gabi"
  get  "/atividades",     :to => "static_pages#atividades"
  get  "/como_ajudar",    :to => "static_pages#ajudar"
  get  "/ajuda_empresa",  :to => "static_pages#ajudar_empresa"
  get  "/fotos",          :to => "static_pages#fotos"
  get  "/contato",        :to => "static_pages#contato"
  post "/contato",        :to => "static_pages#enviar_contato"

  resources :noticias, :only => [:index, :show]

end
