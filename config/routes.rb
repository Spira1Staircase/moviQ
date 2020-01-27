Rails.application.routes.draw do
  devise_for :employers, controllers: {
  	sessions: 'employers/sessions',
  	passwords: 'employers/passwords',
  	registrations: 'employers/registrations'
  }

  devise_for :creaters, controllers: {
  	sessions: 'creaters/sessions',
  	passwords: 'creaters/passwords',
  	registrations: 'creaters/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  get '/about', to: 'homes#about'
  root 'articles#index'
  resources :articles

  resources :creaters do
    resources :requests
    resources :projects
    resources :offers
  end

  resources :employers do
    resources :creaters
    resources :offers
    resources :requests
  end

end
