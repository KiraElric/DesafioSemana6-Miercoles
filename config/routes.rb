Rails.application.routes.draw do
  resources :pets do
    resources :histories
    #resources :histories, only: [:index, :create, :new]
    #resources :histories, shallow: true
  end

  #resources :histories, except: [:index, :create, :new]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
