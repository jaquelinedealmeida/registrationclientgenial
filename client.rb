class Client 
    attr_accessor :name, :age, :diagnosis
    
    def initialize(name, age, diagnosis)
        @name = name
        @age = age
        @diagnosis = ['Level 1', 'Level 2','Level 3', 'no diagnosis']
    end

    def registerClient
        if @age <= 5  && @diagnosis.length
            puts "🗓 Cadastro de #{@name} realizado com sucesso. Boas vindas a Genial "
        elsif @age > 5 && @diagnosis.length
            puts "🚨 O cadastro de #{@name} nao pode ser realizado porque a crianca nao tem diagnostico."
        else @age <= 5 && @diagnosis.length
            puts "🚨 O cadastro de #{@name} nao pode ser realizado porque a crianca tem mais de 5 anos."
        end 
    end 
end


    @register1 = Client.new("Maria Fernanda", 4, (0))
    @register2 = Client.new("Joao Sampaio", 6, (1))

    


puts @register1.registerClient
puts @register2.registerClient

#puts @register2.registerClient("Gabriel Rodrigues", 5, false)
