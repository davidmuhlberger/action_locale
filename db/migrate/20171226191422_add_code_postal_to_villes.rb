class AddCodePostalToVilles < ActiveRecord::Migration[5.0]
  def change
    add_column :villes, :code_postal, :string
  end
end
