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
  def perimetro(lado1, lado2)
    2 * (lado1 + lado2)
  end

  def area(lado1, lado2)
    lado1 * lado2
  end
end

class Rectangulo
  include Formula

  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def lados
    puts "BASE: #{@base} ALTURA: #{@altura}"
  end

  def perimetro(lado1 = @base, lado2 = @altura)
    super
  end

  def area(lado1 = @base, lado2 = @altura)
    super
  end
end

class Cuadrado
  include Formula

  def initialize(lado)
    @lado = lado
  end

  def lados
    puts "LADO: #{@lado}"
  end

  def perimetro(lado1 = @lado, lado2 = @lado)
    super
  end

  def area(lado1 = @lado, lado2 = @lado)
    super
  end
end

r = Rectangulo.new(5,2)
c = Cuadrado.new(4)
