TheDish::Application.routes.draw do
  resources :restaurants, only: [:new, :create, :show] do
    post 'upvote', on: :member
    post 'downvote', on: :member
  end
end
