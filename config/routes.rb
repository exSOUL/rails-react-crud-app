# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'site/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'site#index'

  namespace :api do
    resource :events, only: %i[index show create destroy update]
  end
end
