class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end


class Car < Vehicle
      @@instances = 0
      def initialize()
        @@instances +=1
      end
     def self.get_number_of_instances
     @@instances
      end
      def engine_start
        puts 'El motor se ha encendido'
      end
end

10.times do |i|
  Car.new
end
 puts Car.get_number_of_instances
 puts Car.new.engine_start
