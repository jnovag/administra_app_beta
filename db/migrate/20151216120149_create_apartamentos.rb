class CreateApartamentos < ActiveRecord::Migration
  def change
    create_table :apartamentos do |t|
      t.string :numero
      t.string :torre
      t.integer :piso
      t.integer :nro_habitantes

      t.timestamps null: false
    end
  end
end
