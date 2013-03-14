class CreateRegisters < ActiveRecord::Migration
  def up
    create_table :registers do |t|
      t.string :nombre
      t.string :apat
      t.string :amat
      t.string :carrera
      t.string :nivel
      t.string :email
      t.string :ci
      t.string :ciudad
      t.string :direccion
      t.string :zona
      t.string :telefonos
      t.string :celular
      t.string :otro
      t.text :salud
      t.string :apoderado
      t.string :parentesco
      t.string :telefonoapoderado
      t.string :direccionapoderado

      t.timestamps
    end
  end
  def down
    drop_table :registers
  end
end
