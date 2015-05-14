Rails.application.routes.draw do
  devise_for :users

  root to: 'welcome#index'

  authenticate :user do
    resources  :restrict_reasons, only: [:new, :create, :edit, :update, :destroy]
    resources  :taboo_foods_users, only: [:new, :create, :edit, :update, :destroy]
    resources  :posts, only: [:new, :create, :edit, :update, :destroy]
  end

  resources    :restrict_reasons, only: [:index, :show]
  resources    :taboo_foods_users, only: [:index, :show]
  resources    :posts, only: [:index, :show]

  resources    :taboo_foods, :time_periods, :reasons

end
