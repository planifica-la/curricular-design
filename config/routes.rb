Rails.application.routes.draw do
  resources :concepts
  resources :concept_topics
  resources :grade_competences
  resources :fundamental_competences
  resources :project_problems
  resources :levels
  resources :subjects
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
