class CreateTendencies < ActiveRecord::Migration
  def change
    create_table :tendencies do |t|
      t.string :name, null: false
      t.decimal :score, null: false
      t.references :content, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
