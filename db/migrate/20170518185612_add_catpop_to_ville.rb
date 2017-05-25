class AddCatpopToVille < ActiveRecord::Migration[5.0]
  def change
    add_column :villes, :catpop, :string
  end
end
