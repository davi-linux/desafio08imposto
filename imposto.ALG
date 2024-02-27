//procedimentos

//////////////////////////////////////////////////
procedimento informacoes (impSal : real; impServ: real; impGanh : real; maxDed: real; totalImp: real; impBr: real)

inicio
      escreval
      escreval("RELATORIO")
      escreval("Imposto sobre salario: R$" ,impSal:6:2)
      escreval("Imposto sobre servicos: R$" ,impServ:6:2)
      escreval("Imposto sobre ganho de capital: R$" ,impGanh:6:2)
      escreval("Imposto bruto total: R$" ,totalImp:6:2)
      escreval("Abatimento: R$" ,maxDed:6:2)
      escreval("Imposto devido: R$ " ,totalImp - impBr:6:2)



fimprocedimento


//funcoes

///////////////////////////////////////////////

 funcao impostoSobreSalario ( salarioM : real; salarioA : real) : real
 
 var
    impSal : real
 
 inicio
 
                se salarioM < 3.000 entao
                    impSal <- 0.00

                senao
                     se (salarioM >3.000) ou (salarioM <5.000 ) entao

                         impSal <- ((salarioA *10)/100)

                     senao

                          impSal <- ((salarioA * 20)/100)


                fimse

             fimse
             
             retorne impSal

 fimfuncao
 
//////////////////////////////////////////////////

 funcao salarioMensal ( salarioA: real ) : real
 
 var
 
    salarioM : real
    
 inicio
 
       salarioM <- salarioA / 12
       retorne salarioM
 
 fimfuncao
 
//////////////////////////////////////////////////

 funcao impostoSobreServicos(prestServ: real) : real
 var
    impServ : real
 inicio
                       se prestServ > 0.00 entao

                 impServ <- ( prestServ * 15 ) / 100)


                 senao

                     impServ <- 0.00


                fimse

         retorne impServ
 fimfuncao
 
 /////////////////////////////////////////////////////
 
 funcao impostoSobreGC(quantia: real) : real
 var
  impGanh  : real
 inicio
 
                 se ganhCap > 0.00 entao

                    impGanh <- (( ganhCap * 20 ) / 100)


                 senao

                     impGanho <- 0.00


                fimse

       retorne  impGanh
 fimfuncao
 
//////////////////////////////////////////////////////

funcao abatimento(salario: real; servicos: real; gc: real) : real
var
totalImp, impBr : real
inicio

             totalImp <- impSal + impServ + impGanh
             impBr <- (( totalImp * 30)/100)
             
             retorne impBr


fimfuncao

////////////////////////////////////////////////////////
funcao impostoBrutoTotal(salario: real; servicos: real; gc: real) : real
var
totalImp, impBr : real
inicio

             totalImp <- impSal + impServ + impGanh
             impBr <- (( totalImp * 30)/100)


             retorne totalImp

fimfuncao

////////////////////////////////////////////////////////
funcao deducoes (med: real; edu: real; impBr: real ) : real
var
   gasDed, impDed, maxDed : real
inicio
                           gasDed <- med + edu

            impDed <- gasDed * 30 / 100



            se ( impDed > impBr ) entao
                 maxDed <- impBr

            senao
                 maxDeb <- impDed


           fimse


      retorne maxDed
fimfuncao
Algoritmo "Desafio Imposto "
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Nelio Alves 
// Descrição   : refazer um exercicio ja proposto, utilizando as funcoes
// Autor(a)    : Davi Mendes de Oliveira
// Data atual  : 26/02/2024
Var
// Seção de Declarações das variáveis 
   salarioA,prestServ,ganhCap,med,edu,impBr,maxDed : real
   salarioM,impSal,impServ, impGanh, totalImp  : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
 
      escreva("Renda anual com salario: ")
      leia(salarioA)
      escreva("Renda anual com prestacao de servico: ")
      leia(prestServ)
      escreva("Renda anual com ganho de capital: ")
      leia(ganhCap)
      escreva("Gastos medicos: ")
      leia(med)
      escreva("Gastos educacionais: ")
      leia(edu)

      salarioM <- salarioMensal(salarioA)
      impSal <- impostoSobreSalario(salarioM, salarioA)
      impServ <- impostoSobreServicos(prestServ)
      impGanh  <- impostoSobreGC(ganhCap)
      totalImp <- impostoBrutoTotal(salarioM,prestServ,ganhCap)
      impBr <- abatimento(salarioM,prestServ,ganhCap)
      maxDed <- deducoes(med,edu,impBr)
      informacoes (impSal,impServ,impGanh,maxDed,totalImp,impBr)


      
Fimalgoritmo