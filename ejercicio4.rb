module Semana2
class Semana
  @@primer_dia = 'Lunes'

  def self.primer_dia
    @@primer_dia
  end

  def self.en_un_meses
    "Un mes tiene 4 semanas."
  end

  def self.en_un_año
    "Un año tiene 52 semanas."
  end
end
end

a = Semana2::Semana
puts "La semana comienza el día #{a.primer_dia}"
puts a.en_un_meses
puts a.en_un_año
