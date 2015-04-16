class AddAttachmentImageToDrugs < ActiveRecord::Migration
  def self.up
    change_table :drugs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :drugs, :image
  end
end
