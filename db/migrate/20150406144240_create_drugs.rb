class CreateDrugs < ActiveRecord::Migration
  def change
    create_table :drugs do |t|
      t.string :name
      t.text :uses
      t.text :sideeffects
      t.text :precautions
      t.text :interactions
      t.text :overdose

      t.timestamps null: false
    end
  end
end
