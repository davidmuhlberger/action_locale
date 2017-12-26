class AddNomEtCpToVilles < ActiveRecord::Migration[5.0]
  def change
    add_column :villes, :nom_et_cp, :string
  end
end
