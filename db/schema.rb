# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120917132341) do

  create_table "heros", :force => true do |t|
    t.string   "name"
    t.integer  "hero_id"
    t.integer  "level"
    t.boolean  "hardcore"
    t.integer  "paragon_level"
    t.integer  "gender"
    t.boolean  "dead"
    t.string   "hero_class"
    t.integer  "profile_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "ip_address_collections", :force => true do |t|
    t.string   "ip_address"
    t.string   "items"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "items", :force => true do |t|
    t.integer  "hero_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "items", ["hero_id"], :name => "index_items_on_hero_id"

  create_table "profiles", :force => true do |t|
    t.string   "profile_name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "runs", :force => true do |t|
    t.date     "date"
    t.integer  "time_spent"
    t.integer  "gold_before"
    t.integer  "gold_after"
    t.decimal  "gold_earned", :precision => 15, :scale => 0
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "skills", :force => true do |t|
    t.integer  "hero_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "skills", ["hero_id"], :name => "index_skills_on_hero_id"

  create_table "stats", :force => true do |t|
    t.integer  "life"
    t.decimal  "damage",             :precision => 10, :scale => 0
    t.decimal  "attack_speed",       :precision => 10, :scale => 0
    t.integer  "armor"
    t.integer  "strength"
    t.integer  "dexterity"
    t.integer  "vitality"
    t.integer  "intelligence"
    t.integer  "physical_resist"
    t.integer  "fire_resist"
    t.integer  "cold_resist"
    t.integer  "lightning_resist"
    t.integer  "poison_resist"
    t.integer  "arcane_resist"
    t.decimal  "crit_damage",        :precision => 10, :scale => 0
    t.decimal  "damage_increase",    :precision => 10, :scale => 0
    t.decimal  "crit_chance",        :precision => 10, :scale => 0
    t.decimal  "damage_reduction",   :precision => 10, :scale => 0
    t.decimal  "block_chance",       :precision => 10, :scale => 0
    t.integer  "thorns"
    t.integer  "life_steal"
    t.integer  "life_per_kill"
    t.decimal  "gold_find",          :precision => 10, :scale => 0
    t.decimal  "magic_find",         :precision => 10, :scale => 0
    t.integer  "block_amount_min"
    t.integer  "block_amount_max"
    t.integer  "life_on_hit"
    t.integer  "primary_resource"
    t.integer  "secondary_resource"
    t.integer  "hero_id"
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  add_index "stats", ["hero_id"], :name => "index_stats_on_hero_id"

end
