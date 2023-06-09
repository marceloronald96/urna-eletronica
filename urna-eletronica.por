programa
	
{
	inclua biblioteca Sons
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro candidato1 = 0,candidato2 = 0, candidato3 = 0, votoNulo = 0, votoBranco = 0, totalVotos = 0
		inteiro numeroCandidato, votacaoInvalida, calculoTotalVotos
		logico encerraVotacao = falso , confirmaVoto = falso
		cadeia nomeCandidato1, nomeCandidato2, nomeCandidato3

		real percentualC1, percentualC2, percentualC3, percentualBranco, soma

		caracter confirmaEncerramento = 'N' , confirmaVoto = 'N'

		escreva ("Coloque o nome do Candidato 1: ")
		leia(nomeCandidato1)

		escreva ("Coloque o nome do Candidato 2: ")
		leia(nomeCandidato2)

		escreva ("Coloque o nome do Candidato 3: ")
		leia(nomeCandidato3)
		limpa()

		
	faca
	  {   
			escreva(">> ELEIÇÕES 2023<< \n")
	  		escreva("> Opções de voto < \n")
	  		escreva("1 | ",nomeCandidato1 ,"\n")
	  		escreva("2 | ",nomeCandidato2 ,"\n")
	  		escreva("3 | ",nomeCandidato3 ,"\n")
			escreva("Digite o número do candidato: ")
			leia(numeroCandidato)

			escolha (numeroCandidato){
					caso 1: 
						candidato1++
						escreva(">> DESEJA CONFIRMAR VOTO?\n")
					     escreva(">> Digite S para 'SIM' ou N para 'NÃO' :")
					     leia (confirmaVoto)
						totalVotos++
						escreva("Candidato 1 recebeu um voto\n")
						somConfirmacao(2000)
						limpa()

						se (confirmaVoto == 'S' ou confirmaVoto == 's'){
						confirmaVoto = verdadeiro
						escreva ("VOTO CONFIRMADO \n")
						somConfirmacao(4000)
						pare
						}
					caso 2:
						candidato2++
						totalVotos++
						escreva("Candidato 2 recebeu um voto\n")
						somConfirmacao(2000)
						limpa()
						pare
		
					caso 3:
						candidato3++
						totalVotos++
						escreva("Candidato 3 recebeu um voto\n")
						somConfirmacao(2000)
						limpa()
					     pare
	
					caso 9:
						votoNulo++
						totalVotos++
						escreva("Voto Nulo\n")
						somConfirmacao(2000)
					     limpa()
						pare
	
					caso 6:
						votoBranco++
						totalVotos++
						escreva("Voto Branco\n")
						somConfirmacao(2000)
					     limpa()
						pare
	
					caso 123456:
						limpa()
					escreva(">> Deseja REALMENTE encerrar a votação?\n")
					escreva(">> Digite S para 'sim': ")
					leia(confirmaEncerramento)
					somConfirmacao(2000)

					se (confirmaEncerramento == 's' ou confirmaEncerramento == 'S'){
						encerraVotacao = verdadeiro
						escreva ("VOTAÇÃO ENCERRADA! \n")
						somConfirmacao(4000)
						

					 pare
					}
	
					caso contrario:
						escreva("VOTAÇÃO INVALIDA; vote novamente\n")
						somConfirmacao(2000)
						pare
			}
			
	     }enquanto (encerraVotacao == falso )
	     se(candidato1 > candidato2 e candidato1 > candidato3){
	     	candidato1 = candidato1 + votoBranco
	     	escreva ("Candidato 1 ganhou com: ", candidato1 , " " , "votos \n")
	     	
	     }senao se(candidato2 > candidato1 e candidato2 > candidato3){
	     	candidato2 = candidato2 + votoBranco
	     	escreva ("Candidato 2 ganhou com: ", candidato2 , " " , "votos \n")
	     	
	     }senao se (candidato3 > candidato2 e candidato3 > candidato1){
	     	candidato3 = candidato3 + votoBranco
	     	escreva ("Candidato 3 ganhou com: ", candidato3 , " " , "votos \n")
	     	
	     }senao se (candidato1 == candidato2 e candidato1 == candidato3 e candidato2 == candidato3){
	     	escreva ("Empate!")
	     	somConfirmacao(2000)
	     }

	     soma = (candidato1+candidato2+candidato3+votoNulo+votoBranco)
	     percentualC1 = (candidato1/soma)*100
	     percentualC2 = (candidato2/soma)*100
	     percentualC3 = (candidato3/soma)*100
	     percentualBranco = (votoBranco/soma)*100
	     
	     candidato1 = percentualC1
	     escreva ("Candidato 1", nomeCandidato1," ficou com: ", "  " , candidato1," %", "dos votos \n" )

	     candidato2 = percentualC2
	     escreva ("Candidato 2", nomeCandidato2," ficou com: ", "  " , candidato2," % ", "dos votos \n" )

	     candidato3 = percentualC3
	     escreva ("Candidato 3", nomeCandidato3," ficou com: ", "  ", candidato3," % ", "dos votos \n" )

	     votoBranco = percentualBranco 
	     escreva ("Votos em branco", "  ", votoBranco," % ", "dos votos \n")
	     somConfirmacao(5000)
		
}

		funcao vazio somConfirmacao (inteiro tempoInformado)
		{

		inteiro tempoDeEsperaSom = tempoInformado * 1000

		inteiro somDeConfirmacao = Sons.carregar_som ("audio/confirma-urna.mp3")

		Sons.reproduzir_som(somDeConfirmacao, falso)

		Util.aguarde(tempoInformado)

		}
		



}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 928; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz;
 */