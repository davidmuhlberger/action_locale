class SearchSuggestionsController < ApplicationController
  def index
    @search_suggestions = Ville.order(:nom_propre_et_dep).where("nom_propre_et_dep ilike ?", "#{params[:term]}%")[0..8]
    render json: @search_suggestions.map(&:nom_propre_et_dep)
  end
end
