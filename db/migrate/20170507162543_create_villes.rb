class CreateVilles < ActiveRecord::Migration[5.0]
  def change
    create_table :villes do |t|
      t.string :nom
      t.string :cog
      t.string :catpop
      t.string :nom_propre
      t.string :nom_propre_et_dep
      t.integer :nb_menages_2013
      t.integer :revenu_median_uc
      t.integer :decile_revenu
      t.integer :nb_res_secondaires
      t.float :taux_hlm_legal
      t.float :taux_hlm_2015
      t.float :uc_par_menage


      t.timestamps
    end
  end
end
