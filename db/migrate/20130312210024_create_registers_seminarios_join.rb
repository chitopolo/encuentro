class CreateRegistersSeminariosJoin < ActiveRecord::Migration
  def up
  	create_table :registers_seminarios, :id => false do |t|
  		t.integer "register_id"
  		t.integer "seminario_id"
  	end
  	add_index :registers_seminarios, ["register_id", "seminario_id"]
  end

  def down
  	drop_table :registers_seminarios
  end
end
