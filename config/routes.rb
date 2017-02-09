Rails.application.routes.draw do
  ## 随时注意缩进和格式
  ## 个人认为没有最好的布局，但是要跟着团队的格式规范来就行

  root 'welcome#index'

  resources :articles

  resources :articles do
    resources :comments
  end

end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
