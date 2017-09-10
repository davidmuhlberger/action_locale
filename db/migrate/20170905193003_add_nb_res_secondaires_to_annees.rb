class AddNbResSecondairesToAnnees < ActiveRecord::Migration[5.0]
  def change
    add_column :annees, :nb_res_secondaires, :bigint
  end
end
