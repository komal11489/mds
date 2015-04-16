class AddDiseaseToDrug < ActiveRecord::Migration
  def change
    add_reference :drugs, :disease, index: true
    add_foreign_key :drugs, :diseases
  end
end
