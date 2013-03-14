class Register < ActiveRecord::Base
  has_and_belongs_to_many :seminarios
  attr_accessible :amat, :apat, :apoderado, :asistencia, :carrera, :celular, :ci, :ciudad, :direccion, :direccionapoderado, :email, :nivel, :nombre, :otro, :parentesco, :salud, :telefonoapoderado, :telefonos, :zona, :seminario_ids
end
