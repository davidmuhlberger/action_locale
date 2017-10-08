class AddDepartementToVilles < ActiveRecord::Migration[5.0]
  def change
    add_column :villes, :departement, :string
  end
end
