class Child
    attr_accessor :name, :age, :diagnosis

    def initialize(name, age, diagnosis)
      @name = name
      @age = age
      @diagnosis = diagnosis
    end 
end 

class AgeValidation
    attr_accessor :child

    def initialize(child)
      @child = child 
    end 

    def valid?
      #apenas retorna se a condicao for verdadeira
      return true if child.age <= 5
      raise "Age not valid"
    end
end 

class DiagnosisValidation
  attr_accessor :child

    def initialize(child)
      @child = child
    end 

    def valid?
      return true if child.diagnosis 
      raise "Diagnosis not found"
    end 

end 
#classe que junta todos os metodos 
class Validation
  attr_accessor :validations

    def initialize(validations)
      @validations = validations
    end 

  #se a interacao nao for valida, o metodo quebra
    def valid?
      validations.each do |validation|
       validation.valid?
    end 
  end 
end 

joana = Child.new("Joana", 4, "TEA")
validation = Validation.new([AgeValidation.new(joana), DiagnosisValidation.new(joana)])

validation.valid?