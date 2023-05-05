programa
{
	funcao inicio()
	{
		inteiro candidato1 = 0,candidato2 = 0, candidato3 = 0
		inteiro contador = 0, numeroCandidato, votoNulo = 0, votoBranco = 0, percentualVotos, votacaoInvalida, totalVotos = 0, calculoTotalVotos
		logico encerraVotacao = falso 

	
	     enquanto (encerraVotacao == falso ){   
			escreva("Digite o número do candidato: ")
			leia(numeroCandidato)

			escolha (numeroCandidato){
					caso 1: 
						candidato1++
						totalVotos++
						escreva("Candidato 1 recebeu um voto\n")
						pare
	
					caso 2:
						candidato2++
						totalVotos++
						escreva("Candidato 2 recebeu um voto\n")
						pare
		
					caso 3:
						candidato3++
						totalVotos++
						escreva("Candidato 3 recebeu um voto\n")
					     pare
	
					caso 9:
						votoNulo++
						totalVotos++
						escreva("Voto Nulo\n")
						pare
	
					caso 6:
						votoBranco++
						totalVotos++
						escreva("Voto Branco\n")
						pare
	
					caso 0:
						escreva("Encerrar votação\n")
						encerraVotacao = verdadeiro
						pare
	
					caso contrario:
						escreva("VOTAÇÃO INVALIDA; vote novamente\n")
						pare
			}
	     }
	     se(candidato1 > candidato2 e candidato1 > candidato3){
	     	candidato1 = candidato1 + votoBranco
	     }senao se(candidato2 > candidato1 e candidato2 > candidato3){
	     	candidato2 = candidato2 + votoBranco
	     }senao{
	     	candidato3 = candidato3 + votoBranco
	     } escreva(candidato1," ", candidato2," ", candidato3)	
		
	    
	   
}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1357; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */