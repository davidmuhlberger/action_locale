class SearchSuggestionsController < ApplicationController
  def index
    @search_suggestions = Ville.order(:nom)
    .where("nom ilike ? AND nom != ? AND nom != ? AND nom != ? AND nom != ? AND nom != ? AND nom != ? AND nom != ? AND nom != ? AND nom != ?",
      "%#{params[:term]}%",
      "Moins de 500 habitants",
      "Entre 1 000 et  3 499 habitants",
      "Entre 10 000 et 19 999 habitants",
      "Entre 100 000 et 199 999 habitants",
      "Entre 20 000 et 49 999 habitants",
      "Entre 3 500 et 9 999 habitants",
      "Entre 50 000 et 99 999 habitants",
      "Entre 500 et 999 habitants",
      "Plus de 200 000 habitants",
      )
    render json: @search_suggestions.map(&:nom)
  end
end
