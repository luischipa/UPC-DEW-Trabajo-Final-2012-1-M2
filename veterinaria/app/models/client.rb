class Client < ActiveRecord::Base
has_many :client_patients
has_many :patients, :through => :client_patients

has_attached_file :avatar

	validates_uniqueness_of :codigo #NO PERMITE REGISTROS DUPLICADOS

	#NO PERMITE DEJAR VACIO	
	validates :codigo, :name, :address, :phonecel, :phonehome, :email, :presence => {:in => true,
		:message => " no puede estar vacio" }
		
	validates :codigo, :length => { :is => 8, 
		:message => " :Maximo solo 8 Numeros" }
		
	#VALIDA QUE SEA NUMERO
	validates :codigo, :phonecel, :phonehome, :numericality => { :only_integer => true,
		:message => " :Solo Numeros" }

	validates :email,   
            :uniqueness => true,   
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i ,
			:message => " :Formato Incorrecto"}			
end
