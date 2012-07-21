class AddAttachmentPictureToClients < ActiveRecord::Migration
  def self.up
    change_table :clients do |t|
      t.has_attached_file :picture
    end
  end

  def self.down
    drop_attached_file :clients, :picture
  end
end
