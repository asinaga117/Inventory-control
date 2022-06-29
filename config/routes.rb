Rails.application.routes.draw do
  root "homes#top"
  
  namespace :public do
    get 'top' => 'homes#top'
    
    resources :inventryes, only: [:index, :new, :create, :show, :edit, :update]
    
    resources :customers, only: [:show,:edit,:update]
    
  end
  
  
  namespace :admin do
    get 'top' => 'homes#top'
    
    resources :inventryes, only: [:index, :new, :create, :show, :edit, :update]
    
    resources :customers, only: [:index,:show]
    
  end
  
  
  
  # 顧客用
# URL /customers/sign_in ...
devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

  # 管理者用
# URL /admin/sign_in ...
devise_for :admin, skip: [ :passwords] ,controllers: {
  registrations: "admin/registrations",
  sessions: "admin/sessions"
}


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
