class ChangeFieldToApartamentos < ActiveRecord::Migration
  def change
    change_column :apartamentos, :nro_habitantes, :integer, default: 0
    add_column :apartamentos, :area, :integer, default: 0
  end
end
