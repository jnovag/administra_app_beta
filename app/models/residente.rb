class Residente < ActiveRecord::Base
  belongs_to :apartamento

  after_create :incrementar_residente

  def incrementar_residente
  	apartamento.nro_habitantes += 1
  	apartamento.save
  end
end
