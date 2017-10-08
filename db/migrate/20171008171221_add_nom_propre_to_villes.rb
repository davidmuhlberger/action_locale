class AddNomPropreToVilles < ActiveRecord::Migration[5.0]
  def change
    add_column :villes, :nom_propre, :string
  end
end
