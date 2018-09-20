Rails.application.routes.draw do
  get 'articles/index'
  root controller: :articles, action: :index
  resource :article, only: [:create, :new, :show]
end
