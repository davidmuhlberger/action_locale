class AddUcParMenageToVilles < ActiveRecord::Migration[5.0]
  def change
    add_column :villes, :uc_par_menage, :float
  end
end
