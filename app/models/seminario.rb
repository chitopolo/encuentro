class Seminario < ActiveRecord::Base
	has_and_belongs_to_many :registers
  attr_accessible :category, :hora, :nombre, :obligatory, :seminario_ids
end
