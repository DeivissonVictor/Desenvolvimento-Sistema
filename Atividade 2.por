programa
{
    // Variáveis globais
    cadeia filaNomes[10]
    inteiro filaPrioridades[10]
    inteiro iniciar = 0, fim = -1, tam = 9

    funcao enfileirar(cadeia nome, inteiro prioridade)
    {
        se (fim == tam) {
            escreva("Erro: Fila cheia\n")
        } senao {
            fim = fim + 1
            filaNomes[fim] = nome
            filaPrioridades[fim] = prioridade
            escreva("Chamado enfileirado: ", nome, " (Prioridade ", prioridade, ")\n")
        }
    }

    funcao desinfileirar()
    {
        se (iniciar > fim) {
            escreva("Erro: Fila vazia\n")
        } senao {
            escreva("Chamado removido: ", filaNomes[iniciar], " (Prioridade ", filaPrioridades[iniciar], ")\n")
            iniciar = iniciar + 1
        }
    }

    funcao mostrarFila()
    {
        se (iniciar > fim) {
            escreva("Fila vazia\n")
        } senao {
            escreva("Chamados na fila:\n")
            inteiro i
            para (i = iniciar; i <= fim; i = i + 1) {
                escreva(" - ", filaNomes[i], " (Prioridade ", filaPrioridades[i], ")\n")
            }
        }
    }

    funcao contarAltaPrioridade()
    {
        inteiro cont = 0
        inteiro i
        para (i = iniciar; i <= fim; i = i + 1) {
            se (filaPrioridades[i] >= 4) {
                cont = cont + 1
            }
        }
        escreva("Total de chamados com prioridade alta (4 ou 5): ", cont, "\n")
    }

    funcao inicio()
    {
        // Teste do sistema
        enfileirar("MDeivisson", 3)
        enfileirar("João", 5)
        enfileirar("Vitor", 2)
        enfileirar("Luan", 4)
        enfileirar("Jô", 1)

        mostrarFila()
        contarAltaPrioridade()

        desinfileirar()
        desinfileirar()

        mostrarFila()
        contarAltaPrioridade()
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1654; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */