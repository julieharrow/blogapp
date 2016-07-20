Rails.application.routes.draw do
  devise_for :users

  resources :blog_posts do
    resources :comments, only: [:create, :edit, :update, :destroy]
  end

  root 'blog_posts#index'

  get 'your_posts' => 'blog_posts#your_posts'
  get 'user_posts' => 'blog_posts#user_posts'

end
