class ClientPatient < ActiveRecord::Base
	belongs_to :client
	belongs_to :patient
end
