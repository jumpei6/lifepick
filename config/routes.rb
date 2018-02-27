Rails.application.routes.draw do
  root  'top#index'
  resources :top, only:[:index]
  resources :packages, only: [:index, :show] do
    member do
      # アイテム選択＆金額計算
      get 'pick'
    end
  end

  # 結果、自由記入、送信結果
  ## =>うまく機能していない？？
  resources :pick, only: [:index, :edit, :create]
  ## controller作成時に自動で設定された。消したい
  get 'pick/index'
  get 'pick/edit'
  get 'pick/create'


end
