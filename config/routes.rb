Rails.application.routes.draw do
  devise_for :users

  get 'welcome/index'

  authenticate :user do
  get '/dash', to: 'dash#index', as: :dash_index

  get '/dash/gift', to: 'dash#make_transaction', as: :dash_transaction

  get '/dash/send', to: 'dash#gift_transaction', as: :dash_send_transaction

  post '/dash/transaction', to: 'dash#create_transaction', as: :create_transaction

  post 'dash/gift_transaction', to: 'dash#user_send_transaction', as: :user_send_transaction

  post '/shop/buy', to: 'shop#buy', as: :buy_item

  get '/shop', to: 'shop#index', as: :shop_index

  get '/shop/:name', to: 'shop#category', as: :category_show

  get '/coupon', to: 'coupon#index', as: :coupon_index
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
