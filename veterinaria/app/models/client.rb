class Client < ActiveRecord::Base
# Paperclip
	  has_attached_file :picture,
	    :styles => {
	      :thumb=> "100x100#",
	      :small  => "150x150#" }
		  
# Validaciones de Paperclip
	  validates_attachment_size :picture, :less_than => 2.megabytes
	  validates_attachment_content_type :picture, :content_type => ['image/jpeg', 'image/png']
end
