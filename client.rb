class Client 
    def initialize(name, age, diagnostic)
        @name = name
        @age = age
        @diagnostic = diagnostic
    end

    def registration(dates)
        @dates= dates
    end 

end


class Register < Client
    def initialize(name, age, diagnostic)
        super(name, age, diagnostic)
            if(age <= 5  && diagnostic === true ) 
                puts "🗓 Cadastro de #{@name} realizado com sucesso."
            elsif (age <= 5 && diagnostic === false)
                puts "🚨 O cadastro de #{@name} nao pode ser realizado porque a crianca nao tem diagnostico."
            elsif (age > 5 && diagnostic === true)
                puts  "🚨 O cadastro de #{@name} nao pode ser realizado porque a crianca tem mais de 5 anos."
            elsif (age > 5 &&  diagnostic === false) 
                puts "🚨 O cadastro de #{@name} nao pode ser realizado porque a crianca nao se encaixa nos criterios de atendimento da Genial." 
            else ( name == " " || age == NaN || diagnostic == " " )
                puts " ⇢ Dados nao foram preenchidos corretamente"
            end 

    end 
end 

class Main
    def execute
        
        @register = Register.new("Maria Fernanda", 4,true)
        @register = Register.new("Gabriel Rodrigues", 5, false)
        @register = Register.new("Joao Sampaio", 6, true)
        @register = Register.new("Samara Franca ", 10, false)
        @register = Register.new(" ", 100, " ")
       
        client_registration

    end 

    private

    def client_registration
        @register.registration(@dates)
    end 

end 


Main.new.execute