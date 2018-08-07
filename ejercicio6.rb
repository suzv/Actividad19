

module Test
  def result
    promedio = (nota1.to_f + nota2.to_f) / 2.0
    print 'Estudiante aprobado' if promedio >=4
    print 'Estudiante reprobado' if promedio <4
  end
end

module Attendance
  def student_quantity
    puts "estudiantes creados: #{quantity}"
  end
end

class Student
  include Test
  extend Attendance
  attr_reader :nota1, :nota2
    @@quantity = 0
  def initialize(nombre, nota1 = 4, nota2 = 4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @@quantity +=1
  end
  def self.quantity
    @@quantity
  end
end

students = [['Pipe', 6, 3], ['Jorge', 5, 2],['Marcelo',2,7],['Damian', 4,2],['Leo', 4, 1],['Susana', 6, 3],
            ['Danilea', 5, 2],['Tomas',2,7],['Damian', 4,2],['Leo', 4, 1]]

 students.each{ |s| puts Student.new(*s).result}

print Student.student_quantity
