# config.ru
# Crear un archivo llamado 404.html cuyo body contenga una etiqueta de título
# con el texto "No se ha encontrado la página :(".

# Modificar el archivo config.ru para adaptarlo a los siguientes requerimientos:

### Si se ingresa a la url /index:
##  Agregar un código de respuesta 200.
##  Agregar en los Response Headers un Content-type de tipo text/html.
##  Agregar en el Response Body una etiqueta de título que contenga un
#   texto "Estás en el Index!".
### Si se ingresa a la url /otro:
##  Agregar un código de respuesta 200.
##  Agregar en los Response Headers un Content-type de tipo text/html.
##  Agregar en el Response Body una etiqueta de título que contenga un
#   texto "Estás en otro landing!".
### Si se ingresa a cualquier otra url:
## Agregar un código de respuesta 404.
## Agregar en los Response Headers un Content-type de tipo text/html.
## Agregar en el Response Body el archivo 404.html creado al inicio.

require 'rack'
class MiPrimeraWebApp
  def call(env)
    headers = { 'Content-Type' => 'text/html; charset=utf-8' }
    case env['REQUEST_PATH']
    when '/'      then [202, headers, ['<h1> INDEX </h1>']]
    when '/index' then [200, headers, ['<h1> Estás en el Index! </h1>']]
    when '/otro'  then [200, headers, ['<p> Estás en otro landing</p>']]
    else               [404, headers, [File.read('404.html')]]
    end
  end
end
run MiPrimeraWebApp.new
