class AddNomPropreEtDepToVilles < ActiveRecord::Migration[5.0]
  def change
    add_column :villes, :nom_propre_et_dep, :string
  end
end
