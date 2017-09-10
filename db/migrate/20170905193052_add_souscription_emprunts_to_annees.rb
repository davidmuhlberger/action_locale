class AddSouscriptionEmpruntsToAnnees < ActiveRecord::Migration[5.0]
  def change
    add_column :annees, :souscription_emprunts, :bigint
  end
end
