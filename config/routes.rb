Rails.application.routes.draw do
  #get 'publications/index'
  resources :publications do
    collection do
      post :confirm
    end
  end
end
