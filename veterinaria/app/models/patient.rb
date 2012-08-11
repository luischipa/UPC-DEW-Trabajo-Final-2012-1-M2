class Patient < ActiveRecord::Base
has_many :client_patients
has_many :client, :through => :client_patients
end
