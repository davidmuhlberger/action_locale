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

ActiveRecord::Schema.define(version: 20171005202759) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "annees", force: :cascade do |t|
    t.integer  "ville_id"
    t.integer  "annee"
    t.string   "nom"
    t.integer  "population"
    t.bigint   "recette_dotation_fonctionnement"
    t.bigint   "charge_contingents"
    t.bigint   "endettement_annuite"
    t.bigint   "endettement_encours"
    t.bigint   "depense_equipement"
    t.bigint   "recette_fctva"
    t.bigint   "charge_charges_financieres"
    t.bigint   "recette_taxe_habitation"
    t.bigint   "recette_taxe_fonciere_non_bati"
    t.bigint   "charge_total_fonctionnement"
    t.bigint   "recette_total_fonctionnement"
    t.bigint   "recette_autres_impots_taxes"
    t.bigint   "charge_subventions"
    t.bigint   "recette_taxe_fonciere_bati"
    t.bigint   "charge_achats"
    t.bigint   "recette_subventions"
    t.bigint   "recette_taxe_surfaces_commerciales"
    t.bigint   "charge_personnel"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.bigint   "nb_res_secondaires"
    t.bigint   "souscription_emprunts"
    t.bigint   "recette_total_investissement"
    t.index ["ville_id"], name: "index_annees_on_ville_id", using: :btree
  end

  create_table "search_suggestions", force: :cascade do |t|
    t.string   "term"
    t.integer  "popularity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "villes", force: :cascade do |t|
    t.string   "nom"
    t.integer  "cog"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "catpop"
    t.float    "taux_hlm_legal"
    t.float    "taux_hlm_2015"
    t.bigint   "nb_menages_2013"
    t.float    "uc_par_menage"
    t.float    "revenu_median_uc"
    t.integer  "decile_revenu"
  end

  add_foreign_key "annees", "villes"
end
