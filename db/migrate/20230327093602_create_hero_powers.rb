class CreateHeroPowers < ActiveRecord::Migration[7.0]
  def change
    create_table :hero_powers do |t|
      t.references :heros, null: false, foreign_key: true
      t.references :power, null: false, foreign_key: true
      t.string :strength

      t.timestamps
    end
  end
end
