Rails.application.routes.draw do
  root  'top#index'
  resources :top, only:[:index]
  resources :packages, only: [:index, :show] do
    member do
      get 'pick' # アイテム選択＆金額計算
    end
  end
end
