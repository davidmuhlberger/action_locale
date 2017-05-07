class CreateAnnees < ActiveRecord::Migration[5.0]
  def change
    create_table :annees do |t|
      t.references :ville, foreign_key: true
      t.integer :annee
      t.string :nom
      t.integer :population
      t.integer :recette_dotation_fonctionnement
      t.integer :charge_contingents
      t.integer :endettement_annuite
      t.integer :endettement_encours
      t.integer :depense_equipement
      t.integer :recette_fctva
      t.integer :charge_charges_financieres
      t.integer :recette_taxe_habitation
      t.integer :recette_taxe_fonciere_non_bati
      t.integer :charge_total_fonctionnement
      t.integer :recette_total_fonctionnement
      t.integer :recette_autres_impots_taxes
      t.integer :charge_subventions
      t.integer :recette_taxe_fonciere_bati
      t.integer :charge_achats
      t.integer :recette_subventions
      t.integer :recette_taxe_surfaces_commerciales
      t.integer :charge_personnel

      t.timestamps
    end
  end
end
