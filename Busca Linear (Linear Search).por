programa 
{
    const inteiro TAMANHO = 8
    
    // Define o tamanho do vetor de senhas

    funcao gerar_senhas(inteiro listaSenhas[], inteiro quantidade) {
        inteiro i, sementeSenha
        sementeSenha = 1

        // Gera senhas pseudoaleatórias com base na semente
        para(i = 0; i < quantidade; i++) {
            listaSenhas[i] = ((sementeSenha * (i + 1)) % 999) + 1
        }
    }

    funcao exibir_lista(inteiro listaSenhas[], inteiro quantidade) {
        inteiro i

        // Exibe todas as senhas do vetor
        para(i = 0; i < quantidade; i++) {
            escreva(listaSenhas[i], " ")
        }
        escreva("\n")
    }
    
    funcao inteiro buscaLinear(inteiro vetor[], inteiro tamanho, inteiro valorProcurado) {
        inteiro i

        // Busca linear por um valor no vetor
        para(i = 0; i < tamanho; i++) {
            se (vetor[i] == valorProcurado) {
                retorne i  
            }
        }

        // Retorna -1 se o valor não for encontrado
        retorne -1  
    }

    funcao inicio() {
        inteiro listaSenhas[TAMANHO]
        inteiro escolher, valorProcurado, posicao

        // Geração inicial das senhas
        gerar_senhas(listaSenhas, TAMANHO)

        // Loop principal do menu
        enquanto(verdadeiro) {
            escreva("\n                                          MENU DE BUSCA LINEAR \n")
            escreva("1 - Exibir senhas\n")
            escreva("2 - Buscar senha com Busca Linear\n")
            escreva("3 - Sair\n")
            escreva("Escolha uma opção: ")
            leia(escolher)

            escolha(escolher) {
                caso 1: {
                    // Exibe todas as senhas
                    escreva("\nSenhas:\n")
                    exibir_lista(listaSenhas, TAMANHO)
                    pare
                }

                caso 2: {
                    // Solicita o valor a ser buscado
                    escreva("Digite o valor a buscar: ")
                    leia(valorProcurado)

                    // Realiza a busca e exibe o resultado
                    posicao = buscaLinear(listaSenhas, TAMANHO, valorProcurado)
                    se(posicao != -1) {
                        escreva("Senha encontrada na posição: ", posicao, "\n")
                    } senao {
                        escreva("Senha não encontrada.\n")
                    }
                    pare
                }

                caso 3: {
                    // Encerra o programa
                    escreva("\nSistema encerrado.\n")
                    
                }

                caso contrario: {
                    // Informa opção inválida
                    escreva("Opção inválida, tente novamente.\n")
                }
            }

            // Verifica se a opção escolhida foi sair
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
 * @POSICAO-CURSOR = 2908; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */