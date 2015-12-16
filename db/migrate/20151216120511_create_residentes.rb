class CreateResidentes < ActiveRecord::Migration
  def change
    create_table :residentes do |t|
      t.string :nombre
      t.string :apellido
      t.string :telefono
      t.date :fecha_nacimiento
      t.string :identificacion
      t.references :apartamento, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
