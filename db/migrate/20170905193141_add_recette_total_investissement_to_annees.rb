class AddRecetteTotalInvestissementToAnnees < ActiveRecord::Migration[5.0]
  def change
    add_column :annees, :recette_total_investissement, :bigint
  end
end
