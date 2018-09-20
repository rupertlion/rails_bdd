Rails.application.routes.draw do
  get 'articles/index'
  root controller: :articles, action: :index
  resource :articles, only: [:create, :new, :show]
end
