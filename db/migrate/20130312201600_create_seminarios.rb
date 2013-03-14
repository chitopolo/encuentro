class CreateSeminarios < ActiveRecord::Migration
  def up
    create_table :seminarios do |t|
      t.string :nombre
      t.datetime :hora
      t.string :category
      t.boolean :obligatory

      t.timestamps
    end
  end
  def down
  	drop_table :seminarios
  end
end
