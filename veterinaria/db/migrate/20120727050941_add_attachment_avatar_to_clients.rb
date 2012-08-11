class AddAttachmentAvatarToClients < ActiveRecord::Migration
  def self.up
    add_column :clients, :avatar_file_name, :string
	add_column :clients, :avatar_content_type, :string
	add_column :clients, :avatar_file_size, :integer
	add_column :clients, :avatar_update_at, :datetime
  end

  def self.down
	remove_column :clients, :avatar_file_name
	remove_column :clients, :avatar_content_type
	remove_column :clients, :avatar_file_size
	remove_column :clients, :avatar_update_at
    
  end
end
