class Client < ActiveRecord::Base
has_attached_file :avatar

validates :name, :presence => true
end
