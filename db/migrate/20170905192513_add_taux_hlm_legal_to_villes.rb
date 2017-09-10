class AddTauxHlmLegalToVilles < ActiveRecord::Migration[5.0]
  def change
    add_column :villes, :taux_hlm_legal, :float
  end
end
