programa
{

	inteiro numeros[5], i, maior
	funcao inicio()
	{
	para (i = 0; i < 5; i++) {
		escreva("Digite um número: ")
		leia(numeros[i])
		}
		maior = numeros[0]
		para (i = 1; i < 5; i++) {
		se (numeros[i] > maior) {
		maior = numeros[i]
		}
		}
		escreva("Maior número digitado: ", maior)
    
   }

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */