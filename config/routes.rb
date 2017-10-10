Rails.application.routes.draw do
  resources :search_suggestions
  root to: 'pages#home'

  get "search" => 'villes#search', as: 'search'
  get "/villes/:nom_propre_et_dep/indicateurs" => "villes#show_indicateurs", as: 'ville_indicateurs'
  get "/villes/:nom_propre_et_dep/depenses" => "villes#show_depenses", as: 'ville_depenses'
  get "/villes/:nom_propre_et_dep/finances" => "villes#show_finances", as: 'ville_finances'
  get "/villes/:nom_propre_et_dep/fiscalite" => "villes#show_fiscalite", as: 'ville_fiscalite'
  get "/villes/:nom_propre_et_dep/synthese" => "villes#show_synthese", as: 'ville_synthese'
  get "/projet" => "pages#projet", as: 'pages_projet'
  get "/home" => "pages#home", as: 'pages_home'
  get "/blog" => "pages#blog", as: 'pages_blog'
  get "/documentation" => "pages#documentation", as: 'pages_documentation'
  get "/association" => "pages#association", as: 'pages_association'
  get "/rejoindre" => "pages#rejoindre", as: 'pages_rejoindre'
  get "/mentions" => "pages#mentions", as: 'pages_mentions'
  get "/notice-fiscalite" => "pages#notice_fiscalite", as: 'pages_notice_fiscalite'
  get "/notice-structure" => "pages#notice_structure", as: 'pages_notice_structure'
  get "/notice-analyse" => "pages#notice_analyse", as: 'pages_notice_analyse'
  get "/notice-competences" => "pages#notice_competences", as: 'pages_notice_competences'
  get "/notice-historique" => "pages#notice_historique", as: 'pages_notice_historique'
  get "/notice-methodologie" => "pages#notice_methodologie", as: 'pages_notice_methodologie'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
