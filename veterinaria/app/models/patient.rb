class Patient < ActiveRecord::Base
has_many :client_patients
has_many :client, :through => :client_patients
has_many :patient_histories
has_many :histories, :through => :patient_histories
end
