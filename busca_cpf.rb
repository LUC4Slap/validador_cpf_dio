require "cpf_cnpj"

##
# The function `validar_cpf` takes a CPF number as input and checks if it is valid or not.
# 
# Args:
#   cpf: The parameter "cpf" is a string representing a CPF number.
def validar_cpf(cpf)
    novoCPF = CPF.new(cpf)
    cpf_formatado = novoCPF.stripped
    if CPF.valid?(cpf_formatado)
        puts "CPF valido"    
    else
        puts "CPF não é valido verifique por favor"        
    end
end

10.times { print "-----------"}
puts
print "Validador de CPF, informe o seu cpf para ser validado: "
cpf_inpuf = gets.chomp
validar_cpf(cpf_inpuf)
puts
10.times { print "-----------"}
