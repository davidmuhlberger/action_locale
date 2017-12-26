class SearchSuggestionsController < ApplicationController
  def index
    if params[:term] =~ /\d/
    @search_suggestions = Ville.order(:nom_et_cp).where("nom_et_cp ilike ?", "#{params[:term]}%")[0..8]
    else
    @search_suggestions = Ville.order(:nom_et_cp).where("nom_propre ilike ?", "#{params[:term]}%")[0..8]
    end
    render json: @search_suggestions.map(&:nom_et_cp)
  end
end
