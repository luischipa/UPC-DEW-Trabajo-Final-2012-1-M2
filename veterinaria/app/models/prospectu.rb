class Prospectu < ActiveRecord::Base
	has_attached_file :avatar

	validates :codigo, :name, :address, :phonecel, :presence => {:in => true,
		:message => " no puede estar vacio" }
		
	validates :codigo, :length => { :is => 8, 
		:message => " :Maximo solo 8 Numeros" }
	
	validates :codigo, :phonecel, :numericality => { :only_integer => true,
		:message => " :Solo Numeros" }
	
	validates :codigo, :uniqueness => { :case_sensitive => true,
		:message => " ya existe"}
		
	validates :email,               
            :uniqueness => true,   
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i ,
			:message => " :Formato Incorrecto"}
		
end
