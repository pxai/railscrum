Rails.application.routes.draw do
  get 'board/index'

  get 'board/board'

  get 'board/new'

  get 'home/index'
  get 'sign_in/signin'

  get 'story/index'

  resources :articles
  
  resources  :boards do
    resources :stories do
      resources :tasks
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
