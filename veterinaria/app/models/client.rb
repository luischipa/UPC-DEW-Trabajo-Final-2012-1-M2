class Client < ActiveRecord::Base
has_many :client_patients
has_many :patients, :through => :client_patients


has_attached_file :avatar

validates :codigo, :presence => true #NO PERMITE DEJAR VACIO
validates :name, :presence => true

validates_uniqueness_of :codigo #NO PERMITE REGISTROS DUPLICADOS
validates_numericality_of :codigo  #VALIDA QUE SEA NUMERO


validates :email,   
            :presence => true,   
            :uniqueness => true,   
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }  
end
