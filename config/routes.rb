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

  namespace :creaters do
    resources :projects, only: [:index,:show, :edit, :update, :destroy]
    resources :offers do
      resources :requests, only: [:new, :create, :edit, :update, :destroy]
    end
    get '/requests', to: 'requests#index'
  end

  resources :creaters do
    patch :creater_status
    get '/cancel', to: 'creaters#cancel'
  end

  namespace :employers do
    resources :creaters, only: [:index, :show]
    resources :offers, only: [:index, :show, :new, :create, :edit, :update] do
      resources :requests, only: [:index, :show, :edit, :update, :destroy] do
          resources :projects, only: [:new, :create, :destroy]
      end
    end
  end

  resources :employers do
    patch :employer_status
    get '/cancel', to: 'employers#cancel'
  end

end
