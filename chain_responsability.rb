class Child

    attr_accessor :name, :age, :diagnosis

    def initialize(name, age, diagnosis)
        @name = name
        @age = age
        @diagnosis = diagnosis
    end 
end 

class AgeValidation

  attr_accessor :child, :next_validation

    def initialize(child, next_validation = FinalValidation.new)
      @child = child 
      @next_validation = next_validation
    end 

    def valid?
      return next_validation.valid? if child.age <= 5
      fail "Age not valid"
    end
end 

class DiagnosisValidation
  attr_accessor :child, :next_validation

    def initialize(child, next_validation = FinalValidation.new )
      @child = child
      @next_validation = next_validation
    end 

    def valid?
      return next_validation.valid? if child.diagnosis 
      fail "Diagnosis not find"
    end 

end 

#null object pattern, encapsula um valor nulo. 
class FinalValidation

  def valid?
    puts "Approved"
  end 
end 

joana = Child.new("Joana", 4, "TEA")
chain = AgeValidation.new(joana, DiagnosisValidation.new(joana))

chain.valid?