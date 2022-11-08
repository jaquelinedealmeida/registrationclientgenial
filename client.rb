module ClientRules
    DIAGNOSIS = {
        'TEA_1' => 'Level 1',
        "TEA_2" => 'Level 2',
        "TEA_3" => 'Level 3',
        #"No_diagnosis" => 'No diagnosis'
    }
    MAX_AGE = 5
end 
class Client 
    include ClientRules
    #private attr_accessor :name, :age, :diagnosis
    
    def initialize(name, age, diagnosis)
        @name = name
        @age = age
        @diagnosis = diagnosis
    end

   
    def registerClient
        if @age <= MAX_AGE && DIAGNOSIS.fetch(@diagnosis)
            "🗓 Cadastro de #{@name} foi realizado com sucesso. Boas vindas a Genial "
        end
        rescue Exception => e
            puts "🚨 O cadastro de #{@name} nao pode ser realizado porque a crianca nao tem diagnostico."
            puts e.message
            #com o expection, o erro do fetch e tratado, aparecendo a msg => key not found
            #se for inserido o retur, nao aparece a msg de tratamento de erro, assim como se nao tiver o exception 

    end 
end


@register1 = Client.new("Flavia Cristina",3,'TEA_1')
@register2 = Client.new("Joao Sampaio", 5,'TEA_2')
@register3 = Client.new("Samara Santos", 5,'No_diagnosis')
@register4 = Client.new("Maria Cinara", 2,false)

#e possivel chamar uma chave especifica do hash com o fetch dentro de uma condicao?
#DIAGNOSIS[:No_diagnosis]

puts @register1.registerClient
puts @register2.registerClient
puts @register3.registerClient
puts @register4.registerClient


