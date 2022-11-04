class Client 
    def initialize(name, age, diagnostic)
        @name = name
        @age = age
        @diagnostic = diagnostic
    end

    def registration(dados)
        @dados = dados
    end 

end

#class Registration < Client

    #def initialize(name, age, diagnostic)
        #super(name, age, diagnostic)    
    #end 
#end 

class Printer < Client
    def initialize(name, age, diagnostic)
        super(name, age, diagnostic)
            if(age < 5  && diagnostic === true ) 
                puts "Cadastro de #{@name} realizado com sucesso."
            elsif (age < 5 && diagnostic === false)
                puts " O cadastro de #{@name} nao pode ser realizado porque a crianca nao tem diagnostico."
            elsif (age > 5)
                puts "O cadastro  de #{@name} nao pode ser realizado porque a crianca tem mais de 5 anos"
            elsif(age > 5 || diagnostic === false) 
                puts "O cadastro de #{@name} nao pode ser realizado porque a crianca nao se encaixa nos criterios de atendimento da Genial"
            end 

        end 
end 

class Main
    def execute
        #@client = Client.new("Maria Fernanda", 9, true)
        @printer = Printer.new("Maria Fernanda", 5, true)
        @printer = Printer.new("Gabriel Rodrigues", 6, false)
       
     

        client_registration

    end 

    private

    def client_registration
        @printer.registration(@client)
    end 

end 


Main.new.execute