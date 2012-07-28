class Client < ActiveRecord::Base
has_attached_file :avatar

validates :codigo, :presence => true
validates :name, :presence => true

validates :email,   
            :presence => true,   
            :uniqueness => true,   
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }  
end
