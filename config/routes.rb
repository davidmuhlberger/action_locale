Rails.application.routes.draw do
  root to: 'pages#home'

  get "/villes/:nom/indicateurs" => "villes#show_indicateurs", as: 'ville_indicateurs'
  get "/villes/:nom/budget" => "villes#show_budget", as: 'ville_budget'
  get "/villes/:nom/fiscalite" => "villes#show_fiscalite", as: 'ville_fiscalite'
  get "/projet" => "pages#projet", as: 'pages_projet'
  get "/lexique" => "pages#lexique", as: 'pages_lexique'
  get "/home" => "pages#home", as: 'pages_home'
  get "/competences" => "pages#competences", as: 'pages_competences'
  get "/structure" => "pages#structure", as: 'pages_structure'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
