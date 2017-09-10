class AddTauxHlm2015ToVilles < ActiveRecord::Migration[5.0]
  def change
    add_column :villes, :taux_hlm_2015, :float
  end
end
