class AddFondsCompensationChargesTerritoriales6ToAnnees < ActiveRecord::Migration[5.0]
  def change
    add_column :annees, :fonds_compensation_charges_territoriales_6, :bigint
  end
end
