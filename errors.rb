
class Errors
    
    class WithoutDiagnostic 
        def mensageDiagnostic
            "🚨 O cadastro de #{@name} nao pode ser realizado porque a crianca nao tem diagnostico."
        end 
    end
    
    class IncorretAge 
        def mensageAge
            "🚨  O cadastro de #{@name} nao pode ser realizado porque a crianca tem mais de 5 anos."
        end 
    end 
    
    class WithoutPerfil
        def mensagePerfil
            "🚨 O cadastro de #{@name} nao pode ser realizado porque a crianca nao se encaixa nos criterios de atendimento da Genial."
        end 
    end
    
    def mensages(clientRegister)
        raise if WithoutDiagnostic  if age <= 5 && diagnostic === false
        raise if IncorretAge  if age > 5 && diagnostic === true
        raise if WithoutPerfil if age > 5 && diagnostic === false
    end
    
end 