class Carta
  attr_accessor :numero, :pinta
  def initialize(numero, pinta)
    if !(1..13).include?(numero)
      raise ArgumentError, 'el número no está entre 1 y 13'
    end
    if !['C', 'D', 'E', 'T'].include?(pinta)
      raise ArgumentError, 'La pinta tiene que ser C, D, E o T'
    end
    @numero = numero
    @pinta = pinta
  end
  def numero=(numero)
    if !(1..13).include?(numero)
      raise ArgumentError, 'El número no está entre 1 y 13'
    end
    @numero = numero
  end
  def pinta=(pinta)
    if !['C', 'D', 'E', 'T'].include?(pinta)
      raise ArgumentError, 'La pinta tiene que ser C, D, E o T'
    end
  end
  def self.numero
    Random.rand(1..13)
  end
  def self.pinta
    ['C', 'D', 'E', 'T'].sample
  end
end

array = []
5.times do
  pinta1 = Carta.pinta
  numero1 = Carta.numero
  array.push Carta.new(numero1, pinta1)
end
