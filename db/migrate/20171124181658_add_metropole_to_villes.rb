class AddMetropoleToVilles < ActiveRecord::Migration[5.0]
  def change
    add_column :villes, :metropole, :string
  end
end
