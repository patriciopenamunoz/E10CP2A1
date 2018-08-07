# Se tienen las clases Rectangulo y Cuadrado cuyos constructores reciben las
# medidas de los lados correspondientes.

# Se pide:

## Agregar un método de instancia llámado lados en ambas clases.
#  El método debe imprimir un string con las medidas de los lados.
## Crear un módulo llamado Formula.
## Dentro del módulo Formula crear un método llamado perimetro que reciba dos
#  argumentos (lados) y devuelva el perímetro.
## Dentro del módulo Formula crear un método llamado area que reciba dos
#  argumentos (lados) y devuelva el área.
## Implementar -mediante Mixin- el módulo en las clases Rectangulo y Cuadrado.
## Instanciar un Rectangulo y un Cuadrado.
## Imprimir el área y perímetro de los objetos instanciados utilizando el
#  método del módulo implementado.

module Formula
  def self.perimetro(lado1, lado2)
    2 * (lado1 + lado2)
  end
end

class Rectangulo
  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def lados
    puts "BASE: #{@base} ALTURA: #{@altura}"
  end
end

class Cuadrado
  def initialize(lado)
    @lado = lado
  end

  def lados
    puts "LADO: #{@lado}"
  end
end
