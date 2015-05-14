Rails.application.routes.draw do
  devise_for :users

  root to: 'welcome#index'

  authenticate :user do
    resources  :restrict_reasons, only: [:new, :create, :edit, :update, :destroy]
    resources  :foods_users, only: [:new, :create, :edit, :update, :destroy]
    resources  :posts, only: [:new, :create, :edit, :update, :destroy]
  end

  resources    :reasons_restricts, only: [:index, :show]
  resources    :foods_users, only: [:index, :show]
  resources    :posts, only: [:index, :show]

  resources    :foods, :periods, :reasons

end
