class CreateAnnees < ActiveRecord::Migration[5.0]
  def change
    create_table :annees do |t|
      t.references :ville, foreign_key: true
      t.integer :annee
      t.string :cog
      t.bigint :population
      t.bigint :endettement_16
      t.bigint :autres_depenses_equipement_1
      t.bigint :autres_dotations_subventions_equipement_1
      t.bigint :fctva_1
      t.bigint :subventions_equipement_recues_1
      t.bigint :autres_depenses_equipement_2
      t.bigint :autres_recettes_equipement_2
      t.bigint :depenses_equipement_2
      t.bigint :subventions_equipement_versees_2
      t.bigint :depenses_operations_tiers_4
      t.bigint :recettes_operations_tiers_4
      t.bigint :achats_charges_externes_6
      t.bigint :autres_6
      t.bigint :exceptionnel_6
      t.bigint :frais_elus_6
      t.bigint :frais_financiers_6
      t.bigint :impots_6
      t.bigint :intervention_hors_suventions_6
      t.bigint :personnel_6
      t.bigint :subventions_versees_6
      t.bigint :autres_impots_taxes_7
      t.bigint :autres_produits_fonctionnement_7
      t.bigint :dotations_etat_7
      t.bigint :fiscalite_reversee_7
      t.bigint :impots_locaux_7
      t.bigint :produits_cessions_7
      t.bigint :produits_fonctionnement_exceptionnels_7
      t.bigint :suventions_participations_7
      t.bigint :ventes_biens_services_7
      t.bigint :tfb_produit_commune
      t.bigint :tfb_produit_epci
      t.bigint :tfb_produit_syndicat
      t.bigint :tfnb_produit_commune
      t.bigint :tfnb_produit_epci
      t.bigint :tfnb_produit_syndicat
      t.bigint :th_produit_commune
      t.bigint :th_produit_epci
      t.bigint :th_produit_syndicat

      t.timestamps
    end
  end
end
