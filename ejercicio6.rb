class Student
    @@quantity = 0
  def initialize(nombre, nota1, nota2)
    @nombre = nombre
    @nota1 = 4
    @nota2 = 4
    @@quantity +=1
  end
  



end

module Test
  def result(promedio)
    promedio = nota1.to_f + nota2.to_f / 2
    print 'Estudio aprobado' if promedio >=4
    print 'Estudio reprobado' if promedio <4
  end
end

#Crear un segundo módulo Attendance con un método student_quantity que permita
#mostrar en pantalla la cantidad de estudiantes creados.

#Añadir a la clase Student el módulo Test como métodos de instancia y el módulo
#Attendance como métodos de clase.

#Crear 10 objetos de la clase Student y utilizar los métodos creados para saber
#si los alumnos están aprobados o no y, finalmente, mostrar el total de alumnos creados.

module Attendance
  def student_quantity
  end
end

class Student
  include Test
end
