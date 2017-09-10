class AddNbMenages2013ToVilles < ActiveRecord::Migration[5.0]
  def change
    add_column :villes, :nb_menages_2013, :bigint
  end
end
