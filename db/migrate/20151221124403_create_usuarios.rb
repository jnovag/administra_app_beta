class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :login
      t.string :clave
      t.string :correo

      t.timestamps null: false
    end
  end
end
