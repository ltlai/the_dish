TheDish::Application.routes.draw do
  root 'welcome#index'

  resources :restaurants, only: [:new, :create, :show] do
    member do
      post 'upvote'
      post 'downvote'
    end

    get 'search', on: :collection
  end
end
