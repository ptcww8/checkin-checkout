Rails.application.routes.draw do
	get 'timers/clockin'
	get 'timers/clockout'
  resources :timers
  resources :employees
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: 'employees#show'

end
