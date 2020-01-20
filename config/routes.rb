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
end
