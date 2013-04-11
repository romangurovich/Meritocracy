Meritocracy::Application.routes.draw do
  root to: 'teams#index'
  resources :employees, except: [:destroy]
  resources :teams, except: [:destroy]
  resources :employee_profiles, except: [:destroy]
end
