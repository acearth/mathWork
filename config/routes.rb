Rails.application.routes.draw do
	root to: 'math_powers#index'
  resources :math_powers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
