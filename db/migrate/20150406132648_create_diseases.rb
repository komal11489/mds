class CreateDiseases < ActiveRecord::Migration
  def change
    create_table :diseases do |t|
      t.string :name
      t.string :cause
      t.string :symptom
      t.string :treatment

      t.timestamps null: false
    end
  end
end
