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
    
    def initialize(name, age, diagnosis)
        @name = name
        @age = age
        @diagnosis = diagnosis
    end

    def register_children
        if age <= MAX_AGE && DIAGNOSIS.fetch(diagnosis)
            "🗓 Cadastro de #{name} foi realizado com sucesso. Boas vindas a Genial "
        end
        rescue Exception => e
            puts "🚨 O cadastro de #{name} nao pode ser realizado porque a crianca nao tem diagnostico."
            puts e.message
    end 

    private 
    attr_accessor :name, :age, :diagnosis
end

module RulesCaregivers

    HEALTH_PLAN = ['GNDI', 'Alice', 'Particular']
    INCOME_CAREGIVERS = 10.000
    EMPLOYED_CAREGIVERS = true

end 

class Caregivers
include RulesCaregivers
    
    def initialize(children,health_plan, income, employed_caregivers)
        @children = children
        @health_plan = health_plan
        @income = income 
        @employed_caregivers = employed_caregivers
    end 

    def register_caregivers
        if HEALTH_PLAN.include?(@health_plan)
            "Seu cadastro foi aprovado."
        else 
           "Seu plano nao e um dos nossos parceiros"
        end 
    end 

    def particular_plan
        if @income >= INCOME_CAREGIVERS && @employed_caregivers === EMPLOYED_CAREGIVERS
            "Cadastro realizado com sucesso"
        else 
            "Seu perfil nao esta dentro dos criterios da Genial."
        end
    end 
end 

child1 = Children.new("Flavia Cristina",3,'TEA_1')
child2 = Children.new("Samara Santos", 5,'No_diagnosis')

puts child1.register_children
puts child2.register_children

caregivers1 = Caregivers.new(child1, "Alice", 10.000, true)
caregivers2 = Caregivers.new(child2, "Bradesco", 10.000, true)

puts caregivers1.register_caregivers
puts caregivers2.register_caregivers

caregivers_particular_plan = Caregivers.new(child1, "Particular", 10.000, true)

puts caregivers_particular_plan.particular_plan













