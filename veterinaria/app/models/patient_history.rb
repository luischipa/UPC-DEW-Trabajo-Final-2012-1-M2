class PatientHistory < ActiveRecord::Base
	belongs_to :patient
	belongs_to :history
end
