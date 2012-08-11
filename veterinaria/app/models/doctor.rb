class Doctor < ActiveRecord::Base
has_many :id_Prospectus

	validates :name, :lastname, :phone, :email, :presence => {:in => true,
		:message => " no puede estar vacio" }		
	
	validates :phone, :numericality => { :only_integer => true,
		:message => " :Solo Numeros" }
	
	validates :email,   
            :uniqueness => true,   
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i ,
			:message => " :Formato Incorrecto"}
end
