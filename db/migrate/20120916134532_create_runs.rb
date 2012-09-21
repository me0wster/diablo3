class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.date :date
      t.integer :time_spent
      t.integer :gold_before
      t.integer :gold_after
      t.decimal :gold_earned, :precision => 15

      t.timestamps
    end
  end
end
