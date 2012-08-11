class AddAttachmentAvatarToProspectus < ActiveRecord::Migration
  def self.up
    add_column :prospectus, :avatar_file_name, :string
	add_column :prospectus, :avatar_content_type, :string
	add_column :prospectus, :avatar_file_size, :integer
	add_column :prospectus, :avatar_update_at, :datetime
  end

  def self.down
	remove_column :prospectus, :avatar_file_name
	remove_column :prospectus, :avatar_content_type
	remove_column :prospectus, :avatar_file_size
	remove_column :prospectus, :avatar_update_at
    
  end
end

