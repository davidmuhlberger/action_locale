# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170507203516) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "annees", force: :cascade do |t|
    t.integer  "ville_id"
    t.integer  "annee"
    t.string   "cog"
    t.bigint   "population"
    t.bigint   "endettement_16"
    t.bigint   "autres_depenses_equipement_1"
    t.bigint   "autres_dotations_subventions_equipement_1"
    t.bigint   "fctva_1"
    t.bigint   "subventions_equipement_recues_1"
    t.bigint   "autres_depenses_equipement_2"
    t.bigint   "autres_recettes_equipement_2"
    t.bigint   "depenses_equipement_2"
    t.bigint   "subventions_equipement_versees_2"
    t.bigint   "depenses_operations_tiers_4"
    t.bigint   "recettes_operations_tiers_4"
    t.bigint   "achats_charges_externes_6"
    t.bigint   "autres_6"
    t.bigint   "exceptionnel_6"
    t.bigint   "frais_elus_6"
    t.bigint   "frais_financiers_6"
    t.bigint   "impots_6"
    t.bigint   "intervention_hors_suventions_6"
    t.bigint   "personnel_6"
    t.bigint   "subventions_versees_6"
    t.bigint   "autres_impots_taxes_7"
    t.bigint   "autres_produits_fonctionnement_7"
    t.bigint   "dotations_etat_7"
    t.bigint   "fiscalite_reversee_7"
    t.bigint   "impots_locaux_7"
    t.bigint   "produits_cessions_7"
    t.bigint   "produits_fonctionnement_exceptionnels_7"
    t.bigint   "suventions_participations_7"
    t.bigint   "ventes_biens_services_7"
    t.bigint   "tfb_produit_commune"
    t.bigint   "tfb_produit_epci"
    t.bigint   "tfb_produit_syndicat"
    t.bigint   "tfnb_produit_commune"
    t.bigint   "tfnb_produit_epci"
    t.bigint   "tfnb_produit_syndicat"
    t.bigint   "th_produit_commune"
    t.bigint   "th_produit_epci"
    t.bigint   "th_produit_syndicat"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.index ["ville_id"], name: "index_annees_on_ville_id", using: :btree
  end

  create_table "villes", force: :cascade do |t|
    t.string   "nom"
    t.string   "cog"
    t.string   "catpop"
    t.string   "nom_propre"
    t.string   "nom_propre_et_dep"
    t.integer  "nb_menages_2013"
    t.integer  "revenu_median_uc"
    t.integer  "decile_revenu"
    t.integer  "nb_res_secondaires"
    t.float    "taux_hlm_legal"
    t.float    "taux_hlm_2015"
    t.float    "uc_par_menage"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_foreign_key "annees", "villes"
end
