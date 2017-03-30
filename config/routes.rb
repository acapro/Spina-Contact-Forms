Spina::Engine.routes.draw do

  namespace :admin, path: Spina.config.backend_path do
    resources :contact_forms, only: [:index]
    resources :contact_form_elements, except: [:show, :index] do
      post :sort, on: :collection
    end
  end

  resources :contact_forms, only: [:create]

end
