programa
{
	funcao inicio()
	{
		inteiro candidato1 = 0,candidato2 = 0, candidato3 = 0
		inteiro contador = 0, numeroCandidato, votoNulo = 0, votoBranco = 0, encerraVotacao, percentualVotos, votacaoInvalida
	




	
		faca{
		escreva("Digite o número do candidato: ")
		leia(numeroCandidato)

		escolha (numeroCandidato){

				caso 1: 
				candidato1++
				
				escreva("Candidato 1 recebeu um voto\n")
				
				pare

				caso 2:
				candidato2++
				escreva("Candidato 2 recebeu um voto\n")
				
				pare

				caso 3:
				candidato3++
				escreva("Candidato 3 recebeu um voto\n")
				
				pare

				caso 9:
				votoNulo++
				
				escreva("Voto Nulo\n")
				
				pare

				caso 6:
				votoBranco++
				
				escreva("Voto Branco\n")
				
				pare

				caso 0:
				escreva("Encerrar votação\n")
				leia(encerraVotacao)
				pare

				caso contrario:
				escreva("VOTAÇÃO INVALIDA; vote novamente\n")
			
				pare


		}
}enquanto (numeroCandidato != 0)
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 953; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */