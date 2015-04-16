class AddDrugIdToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :drug_id, :integer
  end
end
