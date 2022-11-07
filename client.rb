module ClientRules
    DIAGNOSIS = ['LEVEL 1','LEVEL 2', 'LEVEL 3']
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
        if @age <= MAX_AGE && DIAGNOSIS.include?(@diagnosis)
            return "🗓 Cadastro de #{@name} foi realizado com sucesso. Boas vindas a Genial "
        else
            return "🚨 O cadastro de #{@name} nao pode ser realizado porque a crianca nao tem diagnostico."
        end 
    end 
end


@register1 = Client.new("Flavia Cristina", 3,'LEVEL 1')
@register2 = Client.new("Joao Sampaio", 5, " ")

puts @register1.registerClient
puts @register2.registerClient

#puts @register2.registerClient("Gabriel Rodrigues", 5, false)
