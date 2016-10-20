VibrogymDev::Application.routes.draw do
  devise_for :users, path: "",
    path_names: {sign_in: "login", sign_out: "logout"}
  root :to => "pages#home"
  get "about" => "pages#about"
  get "contact" => "pages#contact"
  resources :contents, only: [:index]
  resource :users, only: [:edit] do
    collection do
      put "update_password"
    end
  end
end