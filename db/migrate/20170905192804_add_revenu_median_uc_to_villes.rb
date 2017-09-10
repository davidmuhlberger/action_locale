class AddRevenuMedianUcToVilles < ActiveRecord::Migration[5.0]
  def change
    add_column :villes, :revenu_median_uc, :float
  end
end
