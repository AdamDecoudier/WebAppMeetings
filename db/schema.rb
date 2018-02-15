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

ActiveRecord::Schema.define(version: 20180215121724) do

  create_table "est_du_types", force: :cascade do |t|
    t.integer "etablissement_id"
    t.integer "parametrage_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["etablissement_id"], name: "index_est_du_types_on_etablissement_id"
    t.index ["parametrage_id"], name: "index_est_du_types_on_parametrage_id"
  end

  create_table "etablissements", force: :cascade do |t|
    t.string "nom"
    t.string "mail"
    t.string "adresse1"
    t.string "adresse2"
    t.string "adresseCp"
    t.string "adresseVille"
    t.boolean "zep"
    t.boolean "zoneRural"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "intervenants", force: :cascade do |t|
    t.boolean "estResponsablePmis"
    t.string "pseudo"
    t.string "mdp"
    t.string "tel"
    t.string "nom"
    t.string "prenom"
    t.string "mail"
    t.string "adressePerso1"
    t.string "adressePerso2"
    t.string "adressePersoCp"
    t.string "adressePersoVille"
    t.string "adressePro1"
    t.string "adressePro2"
    t.string "adresseProCp"
    t.string "adresseProVille"
    t.integer "metier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["metier_id"], name: "index_intervenants_on_metier_id"
  end

  create_table "interventions", force: :cascade do |t|
    t.string "titre"
    t.datetime "date"
    t.time "duree"
    t.string "description"
    t.integer "nbGarcon"
    t.integer "nbFille"
    t.integer "nbElevesPrevison"
    t.integer "nbElevesPresents"
    t.integer "nbIntAvant"
    t.integer "nbIntApres"
    t.time "heureDebut"
    t.integer "etablissement_id"
    t.integer "parametrage_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["etablissement_id"], name: "index_interventions_on_etablissement_id"
    t.index ["parametrage_id"], name: "index_interventions_on_parametrage_id"
  end

  create_table "intervients", force: :cascade do |t|
    t.integer "intervenant_id"
    t.integer "intervention_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["intervenant_id"], name: "index_intervients_on_intervenant_id"
    t.index ["intervention_id"], name: "index_intervients_on_intervention_id"
  end

  create_table "metiers", force: :cascade do |t|
    t.string "label"
    t.string "specialite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parametrages", force: :cascade do |t|
    t.string "libelle"
    t.string "typeParam"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "responsable_etablissements", force: :cascade do |t|
    t.string "pseudo"
    t.string "mdp"
    t.string "nom"
    t.string "prenom"
    t.string "mail"
    t.string "fonction"
    t.string "tel"
    t.integer "etablissement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["etablissement_id"], name: "index_responsable_etablissements_on_etablissement_id"
  end

end
