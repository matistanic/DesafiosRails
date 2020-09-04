class CuentaBancaria
  attr_accessor :nombre_de_usuario
  def initialize(nombre_usuario, numero_de_cuenta, vip = 0)
    if numero_de_cuenta.digits.count >8
      raise RangeError, 'número de digitos es mayor a 8'
    end
    if !(0..1).include?(vip)
      raise RangeError, 'Vip debe ser 0 o 1'
    end
    @nombre_usuario = nombre_usuario
    @numero_de_cuenta = numero_de_cuenta
    @vip = vip
  end

  def numero_de_cuenta
    "#{@vip}-#{@numero_de_cuenta}"
  end
end

c1 = CuentaBancaria.new("mati", 1231235, 0)
print c1.numero_de_cuenta
