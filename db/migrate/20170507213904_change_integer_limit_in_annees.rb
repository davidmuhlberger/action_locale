class ChangeIntegerLimitInAnnees < ActiveRecord::Migration[5.0]
  def change
    change_column :annees, :recette_dotation_fonctionnement, :integer, limit: 8
    change_column :annees, :charge_contingents, :integer, limit: 8
    change_column :annees, :endettement_annuite, :integer, limit: 8
    change_column :annees, :endettement_encours, :integer, limit: 8
    change_column :annees, :depense_equipement, :integer, limit: 8
    change_column :annees, :recette_fctva, :integer, limit: 8
    change_column :annees, :charge_charges_financieres, :integer, limit: 8
    change_column :annees, :recette_taxe_habitation, :integer, limit: 8
    change_column :annees, :recette_taxe_fonciere_non_bati, :integer, limit: 8
    change_column :annees, :charge_total_fonctionnement, :integer, limit: 8
    change_column :annees, :recette_total_fonctionnement, :integer, limit: 8
    change_column :annees, :recette_autres_impots_taxes, :integer, limit: 8
    change_column :annees, :charge_subventions, :integer, limit: 8
    change_column :annees, :recette_taxe_fonciere_bati, :integer, limit: 8
    change_column :annees, :charge_achats, :integer, limit: 8
    change_column :annees, :recette_subventions, :integer, limit: 8
    change_column :annees, :recette_taxe_surfaces_commerciales, :integer, limit: 8
    change_column :annees, :charge_personnel, :integer, limit: 8
  end
end
