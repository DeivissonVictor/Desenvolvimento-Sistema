programa {
    // Define o número de tipos de moedas disponíveis
    const inteiro TAMANHO = 6

    // Vetor com os valores das moedas em centavos, ordenados do maior para o menor
    const inteiro moedasDisponiveis[TAMANHO] = {50, 25, 10, 5, 2, 1}

    funcao exibir_moedas() {
        inteiro i

        // Exibe as moedas disponíveis para o usuário
        escreva("Moedas disponíveis (em centavos): ")
        para(i = 0; i < TAMANHO; i++) {
            escreva(moedasDisponiveis[i], " ")
        }
        escreva("\n")
    }

    funcao busca_gulosa(inteiro valor) {
        inteiro i, quantidade, restante

        // Inicializa o valor restante a ser formado
        restante = valor

        // Informa o valor que será tentado formar usando a busca gulosa
        escreva("\nUsando busca gulosa para formar ", valor, " centavos:\n")

        // Percorre as moedas da maior para a menor para formar o valor com o menor número possível de moedas
        para(i = 0; i < TAMANHO; i++) {
            se(moedasDisponiveis[i] <= restante) {
                // Calcula quantas moedas desse valor podem ser usadas
                quantidade = restante / moedasDisponiveis[i]

                // Atualiza o valor restante que ainda precisa ser formado
                restante = restante % moedasDisponiveis[i]

                // Exibe quantas moedas desse valor foram usadas
                escreva(quantidade, " moeda(s) de ", moedasDisponiveis[i], " centavos\n")
            }
        }

        // Se ainda restar valor que não pode ser formado, informa o usuário
        se(restante > 0) {
            escreva("Não foi possível formar o valor exato com as moedas disponíveis.\n")
        }
    }

    funcao inicio() {
        inteiro escolher, valor

        // Loop principal do menu do programa
        enquanto(verdadeiro) {
            escreva("\n--- MENU DE BUSCA GULOSA ---\n")
            escreva("1 - Exibir moedas disponíveis\n")
            escreva("2 - Realizar busca gulosa para troco\n")
            escreva("3 - Sair\n")
            escreva("Escolha uma opção: ")
            leia(escolher)

            escolha(escolher) {
                caso 1: {
                    // Exibe as moedas disponíveis
                    exibir_moedas()
                    pare
                }

                caso 2: {
                    // Solicita o valor do troco ao usuário e realiza a busca gulosa
                    escreva("Digite o valor do troco (em centavos): ")
                    leia(valor)
                    busca_gulosa(valor)
                    pare
                }

                caso 3: {
                    // Encerra o programa
                    escreva("Sistema encerrado.\n")
                    
                }

                caso contrario: {
                    // Informa que a opção é inválida e pede para tentar novamente
                    escreva("Opção inválida, tente novamente.\n")
                }
            }

            // Verifica se a opção escolhida foi sair para encerrar o loop
            se(escolher == 3) {
                pare
            }
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3136; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */