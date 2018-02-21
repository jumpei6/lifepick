Rails.application.routes.draw do
  get 'pick/index'

  get 'pick/edit'

  get 'pick/create'

  root  'top#index'
  resources :top, only:[:index]
  resources :packages, only: [:index, :show] do
    member do
      # アイテム選択＆金額計算
      get 'pick'
    end
  end
  # 結果、自由記入、送信結果
  resources :pick, only: [:index, :edit, :create]
end
