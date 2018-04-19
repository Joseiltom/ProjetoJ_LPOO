Algoritmo "Projeto 1"
// Disciplina  :  Logica de programacao orientada a objetos
// Professor   : Aldo Henrique
// Descrição   : Projeto 1
// Autor(a)    : Joseiltom Dantas de Oliveira Junior cpd: 4250
// Data atual  : 21/03/2018
Var
// Seção de Declarações das variáveis 
selMenu, qpessoas, n, valprim, i, valp1, co, qOp, num, decimal,j ,k, rbinario, bdecimal  : inteiro
val1, val2, idadem, idadef, sexm, sexf, idade  : real
sexo, bide, b : caractere
binario: vetor [0..8] de inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

// menu de selecao

repita
    escreval("Digite  o numero correspondente a função desejada: ")
    escreval("1. Soma")
    escreval("2. Subtração")
    escreval("3. Divisão")
    escreval("4. Faixa etária")
    escreval("5. Números primos")
    escreval("6. Mudança de Base")
    escreval("7. Sair")
    leia(selMenu) // escolhe qual funcao sera executada

    // funcao soma
    se selMenu = 1 entao
        escreval("Digite o primeiro numero:")
        leia(val1)
        escreval("Digite o segundo numero:")
        leia(val2)
        // resultado e operacao sao feitos na linha abaixo
        escreval("O resultado da soma: ", val1, " + ", val2, " é ", val1 + val2 )
    fimse

    // funcao subtracao
    se selMenu = 2 entao
        escreval("Digite o primeiro numero:")
        leia(val1)
        escreval("Digite o segundo numero:")
        leia(val2)
        // resultado e operacao sao feitos na linha abaixo
        escreval("O resultado da subtração: ", val1, " - ", val2, " é ", val1 - val2 )
    fimse

    // funcao divisao
    se selMenu = 3 entao
        escreval("Digite o primeiro numero:")
        leia(val1)
        se val1 = 0 entao // verificacao em caso de divisao por zero
            enquanto (val1 = 0) faca
                escreval("Não pode dividir por zero, digite novamente: ")
                leia(val1)
            fimenquanto
        fimse
        escreval("Digite o segundo numero:")
        leia(val2)
        se val2 = 0 entao  // verificacao em caso de divisao por zero
            enquanto (val2 = 0) faca
                escreval("Não pode dividir por zero, digite novamente: ")
                leia(val2)
            fimenquanto
        fimse
        // realisa a operacao e entrega o resultado
        escreval("O resultado da divisão: ", val1, " / ", val2, " é ", val1 / val2 )
    fimse

    // funcao faixa etaria
    se selMenu = 4 entao

        // assinala o valor das variaveis de volta para zero e evita acumulacao de valores de uma operacao anterior
        n <- 0
        qpessoas <- 0
        sexm <- 0
        sexf <- 0
        idadem <- 0
        idade <- 0
        idadef <- 0

        escreval("Digite a quatidade de pessoas: ")
        leia(qpessoas)

        para n de 1 ate qpessoas passo 1 faca       //este bloco repete e acumula os valores de idade informado dependendo da quantidade de pessoas
            escreval("Digite o sexo da ", n, " pessoa:")
            escreval("m para masculino e f para feminino")
            leia(sexo)
            se sexo = "m" entao
                sexm <- sexm + 1
                escreval("Digite a idade desta pessoa(anos em numero inteiro):")
                leia(idade)
                idadem <- idadem + idade
            fimse
            se sexo = "f" entao
                sexf <- sexf + 1
                escreval("Digite a idade desta pessoa(anos em numero inteiro):")
                leia(idade)
                idadef <- idadef + idade
            fimse
        fimpara
        // os calculos de media e a saida sao feitos neste bloco usando os valores que foram acumulados
        escreval("A media geral da idade da pessoas é: ",(idadem + idadef) / qpessoas )
        escreval("a media das idades masculinas é: ", (idadem / sexm))
        escreval("a media das idades femininas é: ", (idadef / sexf))
    fimse
    
    // funcao numeros primos
    se selMenu = 5 entao
        n <- 0
        valprim <- 0
        escreva("digite o numero final:")
        leia(valp1)
        se valp1 = 0 entao
            escreval("o resultado é 0")
        fimse
        para n de 1 ate valp1 faca //este bloco verifica se o numero é primo
            co <- 0
            i <- 0
            para i de 1 ate n faca
                se (n mod i = 0) entao
                    co <- co + 1
                fimse
            fimpara
            se co = 2 entao    // caso o resultado da operacao acima tenha sido 2, o numero e primo e sera somado
                valprim <- valprim + n
            fimse
        fimpara
        escreval("O valor da soma dos numeros primos de 1 até ", valp1," é: ", valprim)
    fimse
    // funcao binario/decimal
    se selMenu = 6 entao
         n <- 0
         escreval("Indique o número de operações que deseja realizar:")
         leia(qOp)
         para n de 1 ate qOp faca
             escreval("Digite b para converter um numero binario para decimal ")
             escreval("Digite d para converter um numero decimal para binario ")
             leia(bide)
             se bide = "d" entao // caso a opcao "d" tenha sido escolhida, sera feita a conversao de decimal para binario
                 j <- num
                 escreval("Digite o valor do caso:")
                 leia(num)
                 enquanto num > 0 faca // conversao de decimal para binario
                     se (num mod 2) = 0 entao
                         b <- "0" + b
                     senao
                         b <- "1" + b
                     fimse
                     num <- num div 2
                 fimenquanto
                 escreval("A conversao de", j, " para binário é ", b)
             fimse
             se bide = "b" entao // caso a opcao "b" tenha sido escolhida, sera feita a conversao de binario para decimal
                 rbinario <- 0
                 para i de 7 ate 0 passo -1 faca   //loop para a entrada dos digitos do binario
                     Escreva ("Digite o ", 8-i, "o dígito:")
                     leia (binario[i])
                     se (binario[i]=1) entao // este bloco ira calcular o valor do digito em uma posicao especifica do vetor e acumulara no resultado
                        rbinario <- 1
                        para n de 1 ate i passo 1 faca
                            rbinario <- rbinario * 2
                        fimpara
                        bdecimal<-bdecimal+binario[i]*rbinario
                     fimse
                 fimpara
                 escreval ("O resultado em decimal é: ", bdecimal)
             fimse
         fimpara
    fimse
ate selMenu = 7 // loop recomeca caso valor se selmenu nao for igual a 7
Fimalgoritmo