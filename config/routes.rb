Rails.application.routes.draw do
  resource :dashboards, only: :show

  resource :modal, only: %i[new show] do
    collection do
      get :replace
    end
  end
  resource :navigation, only: :show do
    collection do
      get :redirect
      get :redirected
      get :replace
      get :slow
      get :second
    end
  end
  resource :numbers, only: :show

  resources :configurations, only: [] do
    get "ios_v1", on: :collection
  end

  direct :docs do
    "https://native.hotwired.dev"
  end

  get :external_redirect, to: redirect("https://37signals.com")

  # Defines the root path route ("/")
  root "dashboards#show"
end
