module Children_Rules
    DIAGNOSIS = {
        'TEA_1' => 'Level 1',
        "TEA_2" => 'Level 2',
        "TEA_3" => 'Level 3',
        #"No_diagnosis" => 'No diagnosis'
    }
    MAX_AGE = 5
end

class Children 
    include Children_Rules
    #private attr_accessor :name, :age, :diagnosis
    
    def initialize(name, age, diagnosis)
        @name = name
        @age = age
        @diagnosis = diagnosis
    end

    def register_children
        if @age <= MAX_AGE && DIAGNOSIS.fetch(@diagnosis)
            "🗓 Cadastro de #{@name} foi realizado com sucesso. Boas vindas a Genial "
        end
        rescue Exception => e
            puts "🚨 O cadastro de #{@name} nao pode ser realizado porque a crianca nao tem diagnostico."
            puts e.message
    end 
end

module Rules_Caregivers

HEALTH_PLAN = ['GNDI', 'Alice', 'Particular']
INCOME_CAREGIVERS = 10.000
EMPLOYED_CAREGIVERS = true
end 

class Caregivers
include Rules_Caregivers
    
    def initialize(children,health_plan, income, employed_caregivers)
        @children = Children
        @health_plan = health_plan
        @income = income 
        @employed_caregivers = employed_caregivers
    end 

    def register_Caregivers
        if HEALTH_PLAN.include?(@health_plan)
            return "Seu cadastro foi aprovado."
        else 
            return "Seu plano nao e um dos nossos parceiros"
        end 
    end 

    def particular_plan
        if @income >= INCOME_CAREGIVERS && @employed_caregivers === EMPLOYED_CAREGIVERS
            return "Cadastro realizado com sucesso"
        else 
            return "Seu perfil nao esta dentro dos criterios da Genial."
        end
    end 
end 

@register1 = Children.new("Flavia Cristina",3,'TEA_1')
@register2 = Children.new("Samara Santos", 5,'No_diagnosis')

puts @register1.register_children
puts @register2.register_children

@register1 = Caregivers.new(@children, "Alice", 10.000, true)
@register2 = Caregivers.new(@children, "Bradesco", 10.000, true)

puts @register1.register_Caregivers
puts @register2.register_Caregivers

@register3 = Caregivers.new(@children, "Particular", 10.000, true)
@register4 = Caregivers.new(@children, "Particular", 10.000, false)

puts @register3.particular_plan
puts @register4.particular_plan












