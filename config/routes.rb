Rails.application.routes.draw do
  resources :exercises do 
    resources :routines
  end

  root 'exercises#index'
end
