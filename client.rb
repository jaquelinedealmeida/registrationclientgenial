#interface
module ChildrenRules
  DIAGNOSIS = {
    'TEA_1' => 'Level 1',
    "TEA_2" => 'Level 2',
    "TEA_3" => 'Level 3',
  }

  MAX_AGE = 5
end

class Children 
  include ChildrenRules

  attr_accessor :name, :age, :diagnosis
    
    def initialize(name, age, diagnosis)
        @name = name
        @age = age
        @diagnosis = diagnosis
    end
    
    def register_child
      if age <= MAX_AGE && DIAGNOSIS.fetch(diagnosis)
       true
      end
    rescue KeyError => e
        puts "A crianca nao tem diagnostico"
        puts e.message
    end 

end

class Caregiver

  attr_accessor :name, :child, :income
  
  def initialize(name, child, income )
    @name = name
    @child = child
    @income = income
  end 
  
end 

module RulesCaregivers

  HEALTH_PLAN = ['GNDI', 'Alice','Particular']
  INCOME_CAREGIVERS = 10_000
  EMPLOYED = true

end 

class Caregivers
include RulesCaregivers

attr_accessor :caregiver1, :caregiver2, :health_plan, :employed_caregivers
  
  def initialize(caregiver1, caregiver2, health_plan, employed_caregivers)
    @caregiver1 = caregiver1
    @caregiver2 = caregiver2
    @health_plan = health_plan
    @employed_caregivers = employed_caregivers
  end 
  
  def health_plan
    if HEALTH_PLAN.include?(@health_plan)
      true
    else 
      "Plano nao conveniado"
    end 
  end 
 #strategy class
  def amount
    caregiver1.income + caregiver2.income >= INCOME_CAREGIVERS
  end 

  def employed_caregivers?
    EMPLOYED
  end 

  def validate_particular?
    #if @income_caregivers >= INCOME_CAREGIVERS && employed_caregivers === EMPLOYED
    if amount && employed_caregivers
      return true
    else 
      "Cadastro fora do perfil."
    end
  end 

end 

#child
child = Children.new("Flavia Cristina",3,'TEA_1')
puts child.register_child

#caregiver
caregiver1 = Caregiver.new("Fernanda", child, 1_000 )
caregiver2 = Caregiver.new("Paulo", child, 6_000)

puts caregiver2.income

#cargivers
caregivers = Caregivers.new(caregiver1, caregiver2, 'Particular', true)

puts caregivers.health_plan
puts caregivers.amount
puts caregivers.employed_caregivers?
puts caregivers.validate_particular?




