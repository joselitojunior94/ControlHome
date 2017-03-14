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

ActiveRecord::Schema.define(version: 20170314013414) do

  create_table "apartamentos", force: :cascade do |t|
    t.string   "local"
    t.string   "nome_proprietario"
    t.string   "cpf_proprietario"
    t.string   "nome_morador"
    t.string   "senha"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "boletos", force: :cascade do |t|
    t.integer  "apartamento_id"
    t.integer  "codigo"
    t.float    "valor_boleto"
    t.float    "juros_boleto"
    t.date     "data_emissao"
    t.date     "data_vencimento"
    t.boolean  "status"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["apartamento_id"], name: "index_boletos_on_apartamento_id"
  end

  create_table "encomendas", force: :cascade do |t|
    t.string   "tipo"
    t.string   "destinatario"
    t.string   "remetente"
    t.date     "data_chegada"
    t.integer  "apartamento_id"
    t.text     "obs"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.boolean  "entregue"
    t.date     "data_recebimento"
    t.index ["apartamento_id"], name: "index_encomendas_on_apartamento_id"
  end

  create_table "vagas", force: :cascade do |t|
    t.string   "local"
    t.integer  "apartamento_id"
    t.string   "modelo_carro"
    t.string   "car_carro"
    t.string   "placa_carro"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["apartamento_id"], name: "index_vagas_on_apartamento_id"
  end

end
