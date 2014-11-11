TheDish::Application.routes.draw do
  resources :restaurants, only: [:new, :create, :show]
end
